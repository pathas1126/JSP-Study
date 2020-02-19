<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a.jsp</title>
</head>
<body bgcolor="yellow">
<%
	int su = (int)request.getAttribute("total");
%>
	<h1>a.jsp 페이지입니다.</h1>
	<h1>su값: <%=su %></h1>
</body>
</html>