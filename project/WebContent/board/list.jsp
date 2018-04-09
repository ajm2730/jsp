<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
BoardListService boardList service = new BoardListService();
List<BoardDTO> list = boardListService.process();
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판리스트</title>
</head>
<body>
<h1>게시판 리스트</h1>
<table>
<!-- 데이터출력: 반복해서 -->
<%
if(list!=null){//데이터가 있으면 출력
for(BoardDTO boardDTO : list){
%>
<tr>
	<td><%= boardDTO.getNo() %></td>
	<td><%= boardDTO.getTitle() %></td>
	<td><%= boardDTO.getWriter() %></td>
	<td><%= boardDTO.getWriteDate() %></td>
	<td><%= boardDTO.getHit() %></td>	
</tr>
<%
}
}else { //데이터 없으면 없다 출력
%>
<tr>
	<td colspan="5">데이터 없음</td>	
</tr>
<%} //end of if~else %>
</table>
</body>
</html>