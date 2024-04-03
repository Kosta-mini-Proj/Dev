package dao;



import org.apache.ibatis.session.SqlSession;

import dto.Recipe;
import util.MybatisSqlSessionFactory;

public class RecipeDaoImpl implements RecipeDao {
	SqlSession sqlsession = MybatisSqlSessionFactory.getSqlSessionFactory().openSession();
	
	// 게시글 등록
	@Override
	public void insertRecipe(Recipe recipe) throws Exception {
		sqlsession.insert("mapper.recipe.insertRecipe", recipe);
		System.out.println(recipe);
		sqlsession.commit();
	}
	
}
