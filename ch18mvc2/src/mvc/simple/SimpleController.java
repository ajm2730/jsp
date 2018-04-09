package mvc.simple;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SimpleController
 */
@WebServlet("/simple")
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("SimpleController.doGet()");
		// 데이터처리 - 생략
		// 처리된 데이터를 담는다. 주로 request에 담는다.
		request.setAttribute("result", "Hello~~");
		//처리가 다 끝나면 보여 주는 쪽(JSP)로 보낸다.(forward)
		RequestDispatcher dispatcher = 
		request.getRequestDispatcher("/WEB-INF/views/simple.jsp");
		dispatcher.forward(request, response);
	}

}
