<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>클라이언트 및 서버 정보</title>
</head>
<body>
IP4 : 0.0.0.0 ~ 255.255.255.255.<br/>
IP6 : 0:0:0:0:0:0:0:0 ~ 255:255:255:255:255:255:255:255:<br/>
클라이언트 IP = <%= request.getRemoteAddr() %><br>
</body>
</html>