package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Recipe;
import service.RecipeService;
import service.RecipeServiceImpl;

/**
 * Servlet implementation class RecipeModify
 */
@WebServlet("/recipemodify")
public class RecipeModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeModify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
			
		try {
			RecipeService recipeService = new RecipeServiceImpl();
			Long recpId = Long.parseLong(request.getParameter("recpId"));
			Recipe recipe =  recipeService.recipeDetail(recpId);
			System.out.println(recpId);
			request.setAttribute("recipe", recipe);
			request.getRequestDispatcher("recipeModify.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			RecipeService recipeService = new RecipeServiceImpl();
			Recipe recipe = recipeService.recipeModify(request);
			request.setAttribute("recipe", recipe);
			request.getRequestDispatcher("recipe.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
