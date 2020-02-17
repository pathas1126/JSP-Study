<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Expression</title>
</head>
<body>
	<%
		// 웹 페이지에 출력을 수행하는 반복문
		for (int i = 0; i < count; i++) {
			out.println("<h1>JSP 테스트" + i + "</h1><br/>");
		}
		out.print("count: " + count);
	%>
	<%=sum(5, 3)%>
	<%=count%>
	<%=count%>
	<%=count%>
	<%!
	int count = 3;
	public int sum(int a, int b) {
		return a + b;
	}%>
</body>
</html>