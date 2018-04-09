<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PageContext</title>
</head>
<body>
<%
HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
%>
<%=httpRequest.getRemoteAddr() %><br/>
<%= request.getRemoteAddr()%><br/>
<%= httpRequest.getServletPath()%>

<% 

//pageContext 객체에 데이터를 넣어보자.
pageContext.setAttribute("name", "이영한");
//session 객체에 데이터를 넣어보자.
session.setAttribute("id", "admin");
//application객체에 데이터를 넣어보자.
application.setAttribute("count", "100");
%>
<%=pageContext.getAttribute("name") %>
${name  }<br/>
$pagescope.name}<br/>
<!-- EL 객체의 name->키로 데이터를 get하게 된다. scope을 지정하지 않으면 4군데 -->
<!-- pageContext->request->session->application -->
$request영역 : ${requestscope.name}<br/>
pageContext : <%=pageContext.getAttribute("name") %><br/>
session : <%=session.getAttribute("name") %><br/>
application : <%=application.getAttribute("name") %><br/>

<a href="usePageContext2.jsp">다른 페이지</a>
</body>
</html>