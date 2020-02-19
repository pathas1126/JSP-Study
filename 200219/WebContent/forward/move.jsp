<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>move.jsp</title>
</head>
<body>
	<%
		String move = request.getParameter("move");
		move += ".jsp";
		System.out.println(move);
	%>

	<!-- forward 액션 태그 -->
	<jsp:forward page="<%=move%>" /><br />
</body>
</html>