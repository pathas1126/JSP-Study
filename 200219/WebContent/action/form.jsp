<!-- 사용자로부터 데이터를 입력받는 form -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="include.jsp" method="post">
	이름: <input type="text" name="name" /> 
	<input type="submit" value="전송" />
</form>

</body>
</html>