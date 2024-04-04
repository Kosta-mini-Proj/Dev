package dao;

import dto.Recipe;

public interface RecipeDao {
	// 레시피 작성
	void insertRecipe(Recipe recipe) throws Exception;
	
	// 레시피 조회 (해당 레시피)
	Recipe selectRecipe(Integer recpId) throws Exception;
}
