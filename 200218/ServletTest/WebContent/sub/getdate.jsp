<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답 페이지</title>
<%
	// 한글 인코딩 설정
	request.setCharacterEncoding("utf-8");
%>
<%
	// send.html에서 전송된 데이터 변수에 저장
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	out.println("이름: " + name + ", 주소: " + addr);
%>
</head>
<body>

</body>
</html>