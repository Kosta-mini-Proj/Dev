package service;

import javax.servlet.http.HttpServletRequest;

import dto.Recipe;

public interface RecipeService {
	void recipeWrite(HttpServletRequest request) throws Exception;
}
