<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 여기서 데이터를 처리한다. - 단순히 처리만 한다.
request.setAttribute("name", "이영환");
%>

<jsp:forward page="/to/to.jsp" />
