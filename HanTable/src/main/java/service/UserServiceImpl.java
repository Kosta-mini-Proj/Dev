package service;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


import dao.UserDao;
import dao.UserDaoImpl;
import dto.Recipe;
import dto.User;

public class UserServiceImpl implements UserService {

	UserDao userdao = new UserDaoImpl();
	@Override
	public void login(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
//		String login = request.getParameter("login");
//		System.out.println(login);
//		// {"userId":"kosta1","password":"1234"}
//		// json 형식이기 때문에 getParameter를 쓰지 않음
//		JSONParser parser = new JSONParser();
//		JSONObject jsonLogin = (JSONObject)parser.parse(login);
//		String userId = (String)jsonLogin.get("userId");
//		System.out.println(userId);
//		// kosta1
//		String password = (String)jsonLogin.get("password");
//		System.out.println(userId + "," + password);
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		// 데이터베이스에서 json형식으로 가져오지 않음 어떻게 가져오지?
		User user = userdao.selectUser(userId);
		
		System.out.println(user);
		// User [userId=null, password=1234, name=홍길동, email=kosta1@gmail.com, birthday=1996-03-22, latestLike=null, profileImg=null]
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
	@Override
	public void userJoin(HttpServletRequest request) throws Exception {
		User user = new User();
	    String birthday = request.getParameter("birthday");
	    if (birthday == null || birthday.isEmpty()) {
	        // 기본값으로 현재 날짜 설정 또는 다른 값을 설정할 수 있음
	        birthday = "1970-01-01";
	    }
		
		user.setUserId(request.getParameter("userId"));
		user.setPassword(request.getParameter("password"));
		user.setName(request.getParameter("name"));
		user.setEmail(request.getParameter("email"));
	    user.setProfileImg(request.getParameter("profileImg"));
	    user.setBirthday(request.getParameter("birthday"));


		System.out.println(user);
		userdao.insertUser(user);

	}
	
	
	
	
	public boolean checkDuplicate(String userId) throws Exception {
		User user = userdao.selectUser(userId);
		if(user==null) return false;
		return true;
	}
}
