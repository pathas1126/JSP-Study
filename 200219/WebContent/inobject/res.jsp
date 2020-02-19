<%-- response 객체 메소드 연습 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sendRedirect Method Practice</h1>
	<p>매개변수 URL 주소로 이동되며 해당 페이지의 내용만 응답으로 출력</p>
	<p>이 페이지에 작성한 내용은 출력되지 않으며 URL주소 역시 표출되지 않음</p>
	<%
		// 해당 URL 주소로 이동되며, 해당 페이지의 내용만 처리 결과로 화면에 출력
		// response.sendRedirect("http://www.daum.net");
		response.sendRedirect("../bottom/bottom.jsp");
	%>
<script>
// 자바스크립트 history 객체: 페이지의 앞 뒤 이동, 새로고침을 담당하는 객체
// location 객체: URL이 담기는 주소창을 제어하는 객체
// href: location 객체의 URL 주소를 저장, 이 페이지가 출력되고 바로 해당 주소로 이동
	// location.href="http://www.naver.com";
	// location.replace(URL); 해당 주소로 경로를 변경함
//	location.replace("http://www.empas.com");
	
	// 앞 페이지로 이동
//	history.forward();
	
	// 매개변수에 해당하는 페이지로 이동
//	history.go(1);
	
	// 이전 페이지로 이동
//	history.back();
	
</script>
</body>
</html>