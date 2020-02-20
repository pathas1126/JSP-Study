<!-- 포워딩용 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
</head>
<body>
	<!-- indexControl.jsp로 포워딩 -->
	<!-- 매개변수 전달 ?CONTROL="intro"&PAGE_NUM="01"-->
	<jsp:forward page="/view/indexControl.jsp">

		<jsp:param name="CONTROL" value="intro" />
		<jsp:param name="PAGE_NUM" value="01" />

	</jsp:forward>
	<!-- 액션 태그 내부에 주석을 사용하면 에러가 발생함 -->

</body>
</html>