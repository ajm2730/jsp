<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
// List<BoardDTO> list = new ArrayList<>();
// list.add(new BoardDTO(10,"자바", null,"이영환","2018-03-03",10));
// list.add(new BoardDTO(9,"JSP",null,"홍다운","2018-03-03",8));
// request.setAttribute("list", list)
%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판 리스트</h1>
<thead>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
</thead>
<c:forEach items="${list }" var="boardDTO">
	<tr class="data">
		<td>${pageScope.boardDTO.No}</td>
		<td>${boardDTO.title} </td>
		<td> ${boardDTO.writer} </td>
		<td> ${boardDTO.writeDate}</td>
		<td> ${ boardDTO.hit} </td>
		
		</tr>
		</c:forEach>
</body>
<!-- 반복처리해서 데이터 출력 -->
<!-- request에 있는 list를 꺼내와서 한개씩 꺼내서 boardDTO라는 -->
<!--  이름으로 pageContext에 저장해 준다. -->

</html>