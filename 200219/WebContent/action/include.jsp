<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 한글이 깨지지 않도록 처리 -->
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>
	<h2>포함을 하는 페이지</h2>

	<!-- include 액션 태그, sub.jsp에서 실행한 결과 삽입 -->
	<jsp:include page="sub.jsp" flush="false" /><br />

	나머지는 sub.jsp가 알아서 해줄거랍니다.
</body>
</html>