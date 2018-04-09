<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="true">
무조건 실행<br/>
</c:if>
<c:set var="age">52</c:set>
<c:if test="${age>=18 }"></c:if>
</body>
</html>