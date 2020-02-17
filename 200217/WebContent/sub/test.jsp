<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!String name = "홍길동";

	public String getName() {
		return name;
	}%>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Declaration</title>
</head>
<body>
	<%
		float f = 4.2f;
		int i = Math.round(f);

		java.util.Date d = new java.util.Date();
		out.println(d); //d.toString 날짜 데이터를 문자로 변환해서 출력하는 메소드
	%>
	<hr>
	실수
	<%=f%>의 반올림 값은?
	<%=i%>
	<br /> 현재 날짜와 시간은?
	<%=d%><br /> name의 값은?
	<%=name%>
	<br /> getName 메소드 호출
	<%=getName()%>
</body>
</html>