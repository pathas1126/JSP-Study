<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답 페이지</title>
<%-- form으로 넘어온 데이터의 한글이 깨지지 않도록 처리 --%>
<%request.setCharacterEncoding("utf-8"); %>
<%!String msg;%>
<%
	// 외부에서 전달해주는 변수를 받아서 처리해주는 내장객체가 존재 request
	// 요구사항 -> 분석 -> 처리결과를 html과 결합해서 재전송해주는 객체 response
	// 형식) 반환형 변수명 = request.getParameter("전달받은 매개변수명")
	String name = request.getParameter("name");
	System.out.println("name: " + name);
	String color = request.getParameter("color");
	System.out.println("color: " + color);

	switch (color) {
	case "blue":
		msg = "파란색";
		break;
	case "red":
		msg = "빨간색";
		break;
	case "yellow":
		msg = "노란색";
		break;
	case "orange":
		msg = "주황색";
		break;
	default:
		msg = "흰색";
		break;
	}
%>
</head>
<body bgcolor=<%=color%>>
	<%=name%>
	님이 좋아하는 색깔은?
	<%=msg%>입니다.

</body>
</html>