<!-- 사용자로부터 데이터를 입력받는 form -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JavaBean 입력 폼</title>
</head>
<body>
<!-- name값은 빈즈 클래스의 프로퍼티 이름과 동일해야 함 -->
<form action="bean3.jsp" method="post">
	이름: <input type="text" name="name" /> <br />
	주소: <input type="text" name="addr" /> <br />
	<input type="submit" value="전송" />
</form>

</body>
</html>