<%@page import="com.webjjang.util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 로그아웃은 AUTH 쿠키를 지운다.
Cookie cookie =  Cookies.deleteCookie(request.getCookies(), "AUTH");
if(cookie!=null) response.addCookie(cookie);
else {
	out.print("<script>");
	out.print("   alert(\"로그인이 필요한 페이지입니다.\");");
	out.print("   location=\""+request.getContextPath()
				+"/index.jsp\";");
	out.print("</script>");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>