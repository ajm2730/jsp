<%@page import="com.webjjang.board.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.webjjang.board.service.BoardListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	BoardListService boardListService = new BoardListService();
	List<BoardDTO> list = boardListService.process();
	request.setAttribute("list", list);
%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet" href="./css/board.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 리스트</title>
<script 
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 	alert("OK");
		$(".data").click(function() {
			//         $(this).hide();
			var no = $(this).find("td:first").text();
			// 		alert("click");
			alert(no);
			location = "view.jsp?no=" + no;
		});
		$("#write").click(function() {
			location = "writeForm.jsp";
		});
	});
</script>


</head>
<body>
	<h1>게시판 리스트</h1>
	<table>
		<thead>
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="boardDTO">
				<tr>
					<td>${boardDTO.no }</td>
					<td>${boardDTO.title }</td>
					<td>${boardDTO.writer }</td>
					<td>${boardDTO.writeDate }</td>
					<td>${boardDTO.hit }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>