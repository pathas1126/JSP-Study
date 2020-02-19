<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b.jsp</title>
</head>
<body bgcolor="red">
	<h1>b.jsp 페이지입니다.</h1>

	<!-- request 객체의 cal 속성 값을 바로 출력
	표현식으로 바로 출력하는 경우에는 형 변환할 필요 없음 -->
	<h2>d의 값: <%=request.getAttribute("cal")%></h2>
</body>
</html>