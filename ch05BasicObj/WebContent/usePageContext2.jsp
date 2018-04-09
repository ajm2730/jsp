<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PageContext</title>
</head>
<body>
pageContext : <%=pageContext.getAttribute("name") %><br/>
session : <%=session.getAttribute("name") %><br/>
application : <%=application.getAttribute("name") %><br/>

<a href="usePageContext2.jsp">다른 페이지</a>
</body>
</html>