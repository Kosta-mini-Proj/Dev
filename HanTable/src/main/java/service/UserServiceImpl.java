package service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import dao.UserDao;
import dao.UserDaoImpl;
import dto.User;

public class UserServiceImpl implements UserService {

	UserDao userdao = new UserDaoImpl();
	@Override
	public void login(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		String login = request.getParameter("login");
		System.out.println(login);
		JSONParser parser = new JSONParser();
		JSONObject jsonLogin = (JSONObject)parser.parse(login);
		String userId = (String)jsonLogin.get("userId");
		String password = (String)jsonLogin.get("password");
		System.out.println(userId + "," + password);
		
		User user = userdao.selectUser(userId);
		
		System.out.println(user);
		
		if (user == null) {
			throw new Exception("해당 아이디는 없습니다.");
		}
		
		if (!user.getPassword().equals(password)) {
			throw new Exception("비밀번호가 틀립니다.");
		}
		
		HttpSession session = request.getSession();
		user.setPassword("");
		session.setAttribute("user", user);
	}
}
