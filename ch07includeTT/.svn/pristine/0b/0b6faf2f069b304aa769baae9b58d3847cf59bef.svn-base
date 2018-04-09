<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// request에 Attribute로 담는다.
	request.setAttribute("test", "aaaa");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info</title>
</head>
<body>
<table>
<tr>
	<td>제품번호</td><td>XXXXX</td>
</tr>
<tr>
	<td>가격</td><td>10,000원</td>
</tr>
</table>
<!-- request에 파라메터로 데이터를 담는다. -->
<jsp:include page="infoSub.jsp" flush="false">
	<jsp:param value="A" name="type"/>
</jsp:include>
</body>
</html>