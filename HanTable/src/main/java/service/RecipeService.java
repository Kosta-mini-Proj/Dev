package service;

import javax.servlet.http.HttpServletRequest;

import dto.Recipe;

public interface RecipeService {
	
	// 레시피 작성
	Recipe recipeWrite(HttpServletRequest request) throws Exception;
	
	// 레시피 상세 보기
	Recipe recipeDetail(Long recpId) throws Exception;
	
	// 레시피 아이디
	Long recipeCount(HttpServletRequest request) throws Exception;
	
	// 레시피 수정
	Recipe recipeModify(HttpServletRequest request) throws Exception;
}