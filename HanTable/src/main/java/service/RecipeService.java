package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.Recipe;

public interface RecipeService {
	
	// 레시피 작성
	void recipeWrite(HttpServletRequest request) throws Exception;
	
	// 레시피 상세 보기
	Recipe recipeDetail(Long recpId) throws Exception;
	
	// 
	Recipe selectRecipeDetail(HttpServletRequest request) throws Exception;
	
}
