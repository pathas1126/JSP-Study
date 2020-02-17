<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%!
// 문자열 배열 선언
String[] keyword = { "Scriptlet", "Expression", "Declaration" };
%>
</head>
<body>
<!-- table 태그는 하나만 있으면 되므로 for문 밖에 작성 -->
	<table border="1px solid black" width="200">
		<%
			// tr, td를 for문을 통해서 생성 
			for (int i = 0; i < keyword.length; i++) {
				out.println("<tr><td>" + i + "</td><td>" + keyword[i] + "</td></tr>");
			}
		%>
		
	</table>
</body>
</html>