<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
     //한글처리 - 나중에는 한꺼번에 하도록 처리.
    request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
<b>request.getParameter() 메서드를 사용</b><br/>
name= <%= request.getParameter("name") %>,<br/>
name= <%= request.getParameter("address") %>,<br/>
name= <%= request.getParameter("pet") %>,<br/>
<b>request.getParameterValues() 메서드를 사용</b><br/>
<%
String[] pets = request.getParameterValues("pet");
for(String p :pets) {
%>
<%=p %>
<% 	
}
%>

<br/>
<b>out 객체를 이용한 데이터 출력</b><br/>

<%
	for(int i =0; i<pets.length; i++)
		out.println(pets[i]+",");
%>



<b>EL 객체를 이용한 데이터 출력</b><br/>
name=${param.name }<br/>
pet=${param.name }<br/>
</body>
</html>