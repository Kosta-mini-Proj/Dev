package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import java.util.List;
import java.util.ArrayList;

import dao.RecipeDao;
import dao.RecipeDaoImpl;
import dto.Recipe;


/**
 * Servlet implementation class Main
 */
@WebServlet("/main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
        RecipeDao recipeDao = new RecipeDaoImpl();


        try {
            // 메인 콘텐츠 가져오기
            List<Recipe> mainContents = new ArrayList<>();
            // 예시로 5개의 레시피를 가져옴
            for (long recpId = 1; recpId <= 5; recpId++) {
                Recipe recipe = recipeDao.selectRecipe(recpId);
                mainContents.add(recipe);
            }

            // 레시피 박스 가져오기
            List<Recipe> recipeBox = new ArrayList<>();
            // 예시로 10개의 레시피를 가져옴
            for (long recpId = 6; recpId <= 15; recpId++) {
                Recipe recipe = recipeDao.selectRecipe(recpId);
                recipeBox.add(recipe);
            }

            // JSP로 데이터 전달
            request.setAttribute("mainContents", mainContents);
            request.setAttribute("recipeBox", recipeBox);

            // JSP로 포워딩
            RequestDispatcher dispatcher = request.getRequestDispatcher("main.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            // 에러 처리 로직 추가
        }
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
