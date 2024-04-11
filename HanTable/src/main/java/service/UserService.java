package service;

import javax.servlet.http.HttpServletRequest;

import dto.User;

public interface UserService {
	// 로그인
	void login(HttpServletRequest request) throws Exception;
	
	void userJoin(HttpServletRequest request) throws Exception;
	
	boolean checkDuplicate(String userId) throws Exception;

}
