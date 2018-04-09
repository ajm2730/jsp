<%@page import="ch08bean.member.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 저장할 객체를 생성한다.
// MemberInfo mi = new MemberInfo();
// 생성된 객체에 setter를 이용해서 데이터를 저장한다.
// mi.setId("test");
// mi.setName("이영환");
%>
<%-- 아이디:<%= mi.getId() %><br/> --%>
<%-- 이름:<%= mi.getName() %><br/> --%>
<%-- <jsp:useBean id="member" scope="request" --%>
<%-- class="ch08bean.member.MemberInfo"></jsp:useBean> --%>
<%
MemberInfo member = new MemberInfo();
request.setAttribute("member", member);
%>
<% member.setId("test"); %>
<% member.setName("이영환"); %>
<jsp:forward page="/useObject.jsp" />