package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Category
 */
@WebServlet("/category")
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Category() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 클라이언트로부터 받은 카테고리 값 추출
        String category = request.getParameter("category");

        // 해당 카테고리에 해당하는 레시피 필터링
        List<Recipe> filteredRecipes = filterRecipesByCategory(category);

        // 필터링된 레시피를 JSON 형태로 변환
        String jsonRecipes = new Gson().toJson(filteredRecipes);

        // JSON 형태의 레시피를 응답으로 전송
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonRecipes);
    }

    // 카테고리에 따라 레시피를 필터링하는 메서드
    private List<Recipe> filterRecipesByCategory(String category) {
        // 실제 필터링 로직을 구현하여 해당 카테고리에 해당하는 레시피만 추출
        // 예를 들어, DAO를 사용하여 DB에서 필터링할 수 있음
        // 여기서는 간단한 예시로 고정된 더미 데이터를 반환
        List<Recipe> filteredRecipes = new ArrayList<>();
        // 필터링된 레시피를 추가
        return filteredRecipes;
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
