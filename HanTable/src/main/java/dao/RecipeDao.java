package dao;

import java.util.List;

import dto.Recipe;

public interface RecipeDao {
	// 레시피 작성
	void insertRecipe(Recipe recipe) throws Exception;
	
	// 레시피 조회 (해당 레시피)
	Recipe selectRecipe(Long recpId) throws Exception;
	
	// 조회수 증가
	void updateViewCount(Long recpId) throws Exception;
}
