package service;

import javax.servlet.http.HttpServletRequest;

import dto.Recipe;

public interface RecipeService {
	
	// 레시피 작성
	void recipeWrite(HttpServletRequest request) throws Exception;
	
	Recipe recipeDetail(HttpServletRequest request) throws Exception;
}
