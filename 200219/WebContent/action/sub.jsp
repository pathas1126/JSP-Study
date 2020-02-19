<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 전송된 데이터를 변수에 저장 -->
	<%
		String name = request.getParameter("name");
	%>

	<!-- 출력 -->
	<b><%=name%>님 잘 오셨습니다.</b>
</body>
</html>