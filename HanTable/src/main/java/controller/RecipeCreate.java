package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.RecipeService;
import service.RecipeServiceImpl;

/**
 * Servlet implementation class RecipeCreate
 */
@WebServlet("/recipecreate")
public class RecipeCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeCreate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("recipeCreate.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		try {
			RecipeService recipeService = new RecipeServiceImpl();
			recipeService.recipeWrite(request);
			System.out.println(request);
			response.sendRedirect("recipe");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("err",e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
