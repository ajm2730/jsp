package com.webjjang.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

/**
 * Servlet Filter implementation class LoginCheck
 */
// web.xml에 설정하고 적용한다.
//@WebFilter("/LoginCheck")
public class LoginCheckFilter implements Filter {

	public static List<String> loginURI=new ArrayList<String>();
	
    /**
     * Default constructor. 
     */
    public LoginCheckFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// request는 ServletRequest 이므로 getServletPath 같은 존재하지 않는다.
		// HttpServletRequest 캐스팅 해서 사용한다.
		HttpServletRequest req = (HttpServletRequest) request;
		// servletpath, uri
		String path = req.getServletPath();
		String uri = req.getRequestURI();
		
		String res = uri.substring(uri.indexOf(path));
		
		System.out.println(uri.indexOf(path));
		System.out.println
		("LoginCheckFilter.doFilter.req.servletPath:"+
				path);
		System.out.println("LoginCheckFilter.doFilter.req.res:"+
				res);
		System.out.println("LoginCheckFilter.doFilter.req.uri:"+
				uri);
		//요청한 자원이 로그인이 필요한 것인지 확인하는 메서드 호출해서 실행 여부를 결정한다.
		if (isExist(res)) {
//			if(로그인 확인)chain.doFilter(request, response);
//			else 로그인이 필요하므로 로그인 페이지로 이동시킨다.
			System.out.println("로그인 체크를 해야하는 URL");
			req.getSession().setAttribute
			("reqURI", req.getRequestURI());
			chain.doFilter(request, response);
		}else {
			
		// pass the request along the filter chain
			
			chain.doFilter(request, response);
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		// 로그인 처리에 필요한 URL 등록 - 한번만 실행된다.
		loginURI.add("/board/write.do");
		loginURI.add("/board/update.do");
		loginURI.add("/board/delete.do");
		
		
	}
	//필요한 메서드선언 - 데이터가 존재하는지 여부를 물어보는 메서드
	public boolean isExist(String res) {
		for(String s : loginURI)
			if(res.equals(s)) return true;
		return false;
	}

}
