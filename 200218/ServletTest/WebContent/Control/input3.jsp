<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- 과제 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>문자, 숫자 입력</h1>
	<br />
	<form method="post" action="/ServletTest/RepeatServlet">
		반복 문자: <input type="text" name="string" /> <br />
		반복 숫자: <input type="text" name="number" /><br />
		<input type="submit" value="전송"/>
	</form>
</body>
</html>