package com.webjjang.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class boardController
 */
// @WebServlet("/boardController")
public class boardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public static String pre = "/WEB-INF/views/";
	public static String suf = ".jsp";
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("BoardController.service()");
		System.out.println(request.getMethod());
		System.out.println(request.getServletPath());
	}

}
