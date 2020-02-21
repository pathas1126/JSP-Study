<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Make a Cookie</title>
</head>
<body>
	<%
		// 1. 쿠키생성 -> 이름, 저장할 값 지정
		String cookieName = "myCookie";
		Cookie cookie = new Cookie(cookieName, "apple");

		// 2. 쿠키 기본값 설정
		cookie.setMaxAge(60 * 2);
		
		// 3. 쿠키 값 변경
		cookie.setValue("Melon");
		
		// 4. 쿠키 전송
		response.addCookie(cookie);
	%>

	<h2>쿠키가 생성되었습니다.</h2>
	<br /> 쿠키의 내용은
	<a href="useCookie.jsp">여기서 확인 가능</a>

</body>
</html>