<%-- include 연습 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>이 페이지는 include 지시어를 연습하기 위해 만들어졌습니다.</h3>
	<%@include file="./Included.jsp"%>
	<%=strJsp%>
	<%=getStrJsp()%>


	<%@include file="./sub/JspModule.java"%>
	<%=strJava%>
	<%=getStrJava()%>

	<%@include file="./bottom/bottom.jsp"%>
</body>
</html>