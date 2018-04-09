
<%@page import="com.webjjang.board.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.webjjang.board.service.BoardListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
BoardListService boardListService = new BoardListService();
List<BoardDTO> list = boardListService.process();
request.setAttribute("list", list);
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 리스트</title>
<script
	type="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</head>
<body>
	<h1>게시판리스트</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		
		<tbody>
		<c:forEach items="${list }" var="boardDTO">
			<tr class="data">
				<td>${boardDTO.no }</td>
				<td>${boardDTO.title }</td>
				<td>${boardDTO.writer }</td>
				<td>${boardDTO.writedate }</td>
				<td>${boardDTO.hit }</td>
				
			</tr>
			</c:forEach>
		</tbody>
		
	</table>

</body>
</html>