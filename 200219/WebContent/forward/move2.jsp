<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>move2.jsp</title>
</head>
<body>
	<h2>요청을 판단해서 올바른 요청인 경우에 페이지를 이동시킴</h2>
	<%
		// a.jsp에 전달할 변수
		int su = 100;
		request.setAttribute("total", su);

		// b.jsp에 전달할 변수
		Date d = new Date();
		request.setAttribute("cal", d);

		// forward.jsp에서 데이터를 받아옴
		String move = request.getParameter("move");
		move += ".jsp";
		System.out.println(move);

		// 이동할 페이지가 있는 경우 페이지 이동
		if (move.equals("a.jsp")) {
	%>
	<!-- forward 액션 태그, 프로그램 제어를 a.jsp로 이동시킴 -->
	<jsp:forward page="a.jsp" />
	<%
		} else if (move.equals("b.jsp")) {
	%>
	<!-- forward 액션 태그, 프로그램 제어를 b.jsp로 이동시킴 -->
	<jsp:forward page="b.jsp" />
	<%
		} else {
	%>
	<!-- 잘못된 페이지 요청인 경우 알림을 띄우고 forward.jsp로 이동시킴 -->
	<script>
		alert("정상적인 페이지를 입력해주세요!!");
		location.href("forward.jsp");
	</script>
	<%
		}
	%>
</body>
</html>