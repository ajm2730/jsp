package example;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DBCPinit
 */
//@WebServlet(
//		urlPatterns = { "/d" }, 
//		initParams = { 
//				@WebInitParam(name = "userid", value = "test", description = "오라클 접속 계정")
//		})
public class DBCPinit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DBCPinit() {
        super();
        System.out.println("DBCPInit 생성자 실행");
        System.out.println(getInitParameter("driver"));
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
//		public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("DBCPInit.init()실행");
		//init() - 아무것도 파라미터 안넘어 올때 상속받은getInitParameter()를
		// 이용해서 설정해 놓은 파라미터를 받아낸다
//		System.out.println(getInitParameter("driver"));
		//init(config) config 파라미터가 넘어오면 config 객체를 통해서 받아야
		//오류가 발생하지않는다
		System.out.println(getInitParameter("driver"));
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("DBCPInit.doGet() 실행");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("DBCPInit.doPost() 실행");
	}

}
