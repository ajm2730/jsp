<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setAttribute("name", "홍다운");
    request.setAttribute("gender", "여성");
    request.setAttribute("part", "공지");
//     session.setAttribute("id", "test");
    session.removeAttribute("id");
    %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>${(empty id)?:"로그인하세요.":id+="님 환영합니다." } </h1>
<form action="" method="post">
이름 : <input name="name" value="${name }"><br/>
성별 : <br/>
<input name="gender" type="radio" value="남성"
${(gender =="남성")?"checked='checked'":""}/> 남성
<input name="gender" type="radio" value="여성"/>
${(gender =="남성")?"checked='checked'":""}/> 여성<br/>
<select name="part">
	<option ${(part=="일반")? "selected='selected'":""}>일반</option>
	<option ${(part=="공지")? "selected='selected'":""}>공지</option>
	<option ${(part=="질문답변")? "selected='selected'":""}>질문답변</option>
</select>
</form>
${pageContext.request.requestURI }<br/>
<%= request.getRequestURI() %><br/>
${pageContext.session.id }<br/>
${cookie.ID.value }<br/>
<!-- request 라는 키로 저장되어 있는 객체를 받아오자 -->
${param.request }<br/>
<%
pageContext.setAttribute("request", "test1");
%>
${request }<br/>
${"10"+1 }<br/>
<%-- ${null+1 }<br/> : 되지만 사용하지 마세요. --%>
${"일" }${1 }<br/>
${"일"+= "1" }<br/>
${1+1;10+10 }<br/>
${var=10 }<br/>
${var }<br/>
${pageScope.var }<br/>
\${var }<br/>
</body>
</html>