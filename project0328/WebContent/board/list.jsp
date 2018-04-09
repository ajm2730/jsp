<%@page import="com.webjjang.board.dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.webjjang.board.service.BoardListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="" %>
<%
BoardListService boardListService = new BoardListService();
List<BoardDTO> list = boardListService.process();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 리스트</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
// 	alert("OK");
    $(".data").click(function(){
//         $(this).hide();
        var no = $(this).find("td:first").text();
// 		alert("click");
		alert(no);
		location = "view.jsp?no="+no;
    });
});
</script>
<style type="text/css">
th, td{border: 1px solid #888; padding: 2px 5px}
th{background: black; color: white;}
table{width: 600px; margin: 0 auto;}
h1{text-align: center;}
</style>
</head>
<body>
<h1>게시판 리스트</h1>
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
<!-- 데이터를 출력하는 반복 처리 -->
<% for(BoardDTO boardDTO : list){ %>
	<tr class="data">
		<td><%= boardDTO.getNo() %></td>
		<td><%= boardDTO.getTitle()%></td>
		<td><%= boardDTO.getWriter()%></td>
		<td><%= boardDTO.getWriteDate()%></td>
		<td><%= boardDTO.getHit()%></td>
	</tr>
<%} %>
</tbody>
</table>
</body>
</html>