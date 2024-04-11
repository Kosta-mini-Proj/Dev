package dao;

import org.apache.ibatis.session.SqlSession;

import dto.Recipe;
import dto.User;
import util.MybatisSqlSessionFactory;

public class UserDaoImpl implements UserDao{
	SqlSession sqlsession = MybatisSqlSessionFactory.getSqlSessionFactory().openSession();
	@Override
	public User selectUser(String userId) throws Exception {
		return sqlsession.selectOne("mapper.user.selectUser", userId);
	}
	
	@Override
	public void insertUser(User user) throws Exception {
		sqlsession.insert("mapper.user.insertUser", user);
		System.out.println(user);
		sqlsession.commit();
	}
}
