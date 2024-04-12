package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Recipe;
import service.RecipeService;
import service.RecipeServiceImpl;

/**
 * Servlet implementation class Recipe
 */
@WebServlet("/recipe")
public class RecipeDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeDetail() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.getRequestDispatcher("recipe.jsp").forward(request, response);
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Long recpId = Long.parseLong(request.getParameter("recpId"));
		
		try {
			RecipeService recipeservice = new RecipeServiceImpl();
		    Recipe recipe = recipeservice.recipeDetail(recpId);
		    System.out.println(recipe);
		    request.setAttribute("recipe", recipe);
			request.getRequestDispatcher("recipe.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}