package service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.RecipeDao;
import dao.RecipeDaoImpl;
import dto.Recipe;
import dto.User;

public class RecipeServiceImpl implements RecipeService {
	
	// recipeDao 객체 생성 (가져다 쓸 수 있게 해주기 위해서)
	private RecipeDao recipedao = new RecipeDaoImpl();

	
	// 게시글 작성
	@Override
	public void recipeWrite(HttpServletRequest request) throws Exception {
		Recipe recipe = new Recipe();
		
		String uploadPath = request.getServletContext().getRealPath("upload");
		int size = 10*1024*1024;
		MultipartRequest multi = new MultipartRequest(request,uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
		
		File file = multi.getFile("file");

		if(file!=null) {
			recipe.setRecpImg(file.getName());
			System.out.println(file.getName());
		}

		recipe.setRecpTitle(multi.getParameter("recpTitle"));
		recipe.setRecpIntro(multi.getParameter("recpIntro"));
		recipe.setCateType(multi.getParameter("cateType"));
		recipe.setCateHow(multi.getParameter("cateHow"));
		recipe.setCateTime(multi.getParameter("cateTime"));
		recipe.setCateIngredient(multi.getParameter("cateIngredient"));
		recipe.setRecpIngredient(multi.getParameter("recpIngredient"));
		recipe.setRecpCont(multi.getParameter("recpCont"));
		
		User user = (User)request.getSession().getAttribute("user");
		if(user!=null) {
			recipe.setUserId(user.getUserId());	
		}
		
		System.out.println(recipe);
		recipedao.insertRecipe(recipe);
		
	}


	// 레시피 상세 (해당 레시피 조회 & 상세보기)
	@Override
	public Recipe recipeDetail(Long recpId) throws Exception {
		// 해당 레시피의 조회수를 증가
		recipedao.updateViewCount(recpId);
		// 해당 레시피 검사
		return recipedao.selectRecipe(recpId);
	}


	@Override
	public Recipe selectRecipeDetail(HttpServletRequest request) throws Exception {
		
		return recipedao.;
	}


	
	
	
}
