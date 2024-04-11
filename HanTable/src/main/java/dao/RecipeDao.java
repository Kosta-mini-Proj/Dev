package dao;

import dto.Recipe;

public interface RecipeDao {
	// 레시피 작성
	void insertRecipe(Recipe recipe) throws Exception;
	
	// 레시피 조회 (해당 레시피)
	Recipe selectRecipe(Long recpId) throws Exception;
	
	// 레시피 수정
	void updateRecipe(Recipe recipe) throws Exception;
	
	// 조회수 증가
	void updateViewCount(Long recpId) throws Exception;
	
	// 게시글 몇개인지 확인
	Long selectRecipeCount() throws Exception;
	
	// recpId 최대 값을 가지고 오는 메서드
	Long selectMaxNumber() throws Exception;
}