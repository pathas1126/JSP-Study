<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>
	<%
		String msg = request.getParameter("msg");
		int num = Integer.parseInt(request.getParameter("number"));
		System.out.println("msg: " + msg + ", number: " + num);

		int i = 0;
		while (i < num) {
	%>

	<b><%=msg%></b><br/>

	<%
		i++;
		}
	%>
</body>
</html>