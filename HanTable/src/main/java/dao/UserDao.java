package dao;

import dto.User;

public interface UserDao {
	User selectUser(String userId) throws Exception;
	
}
