package dao;

import org.apache.ibatis.session.SqlSession;

import dto.User;
import util.MybatisSqlSessionFactory;

public class UserDaoImpl implements UserDao{

	SqlSession sqlsession = MybatisSqlSessionFactory.getSqlSessionFactory().openSession();
	@Override
	public User selectUser(String userId) throws Exception {
		return sqlsession.selectOne("mapper.user.selectUser", userId);
	}
	
}
