package dao;



import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.Recipe;
import util.MybatisSqlSessionFactory;

public class RecipeDaoImpl implements RecipeDao {
	SqlSession sqlsession = MybatisSqlSessionFactory.getSqlSessionFactory().openSession();
	
	// 레시피 작성
	@Override
	public void insertRecipe(Recipe recipe) throws Exception {
		sqlsession.insert("mapper.recipe.insertRecipe", recipe);
		System.out.println(recipe);
		sqlsession.commit();
	}

	// 레시피 상세 검색 (selectOne -> recpId만 가지고 오기 때문에)
	@Override
	public Recipe selectRecipe(Long recpId) throws Exception {
		return sqlsession.selectOne("mapper.recipe.selectRecipe", recpId);
	}

	//조회수 증가
	@Override
	public void updateViewCount(Long recpId) throws Exception {
		sqlsession.update("mapper.recipe.updateViewCount", recpId);
		sqlsession.commit();
	}

	
}
