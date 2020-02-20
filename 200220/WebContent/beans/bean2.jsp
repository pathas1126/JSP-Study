<!-- page 디렉티브에서 BeanDTO 클래스 import, 패키지명.클래스명-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="test.BeanDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	// 한글 처리
	request.setCharacterEncoding("utf-8");

	// form.jsp로부터 전송된 데이터 변수에 저장
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	System.out.println("name: " + name + ", addr: " + addr);

	// JavaBean 객체 생성
	BeanDTO bd = new BeanDTO();

	// 프로퍼티 개수만큼 Setter 메소드 호출
	bd.setName(name);
	bd.setAddr(addr);

	// 필요에 따라 Getter 메소드 호출
	out.println("이름: " + bd.getName());
	out.println("주소: " + bd.getAddr());
%>
</head>
<body>
	<h2>
		이름:
		<%=bd.getName()%>
	</h2>
	<h2>
		주소:
		<%=bd.getAddr()%>
	</h2>
</body>
</html>