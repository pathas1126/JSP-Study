<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Scriptlet</title>
</head>
<body>

	<%
		Date nowDate = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
		String formatDate = dateFormat.format(nowDate);
	%>

	<p>
		현재 날짜는
		<%=formatDate%>
		입니다.
	</p>
	<%
		// 콘솔 출력
		System.out.println("안녕");

		// 웹 페이지 출력
		out.println("<h1>안녕하세여</h1>");
	%>
</body>
</html>