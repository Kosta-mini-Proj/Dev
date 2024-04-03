package dao;

import dto.Recipe;

public interface RecipeDao {
	void insertRecipe(Recipe recipe) throws Exception;
}
