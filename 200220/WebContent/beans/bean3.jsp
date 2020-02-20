<!-- useBean 태그의 class에서 BeanDTO와 연결되기 때문에 import 생략 가능 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	// 한글 처리
	request.setCharacterEncoding("utf-8");

	// form3.jsp로부터 전송된 데이터 변수에 저장

%>
</head>
<body>
	<!-- useBean 액션 태그로 bd 객체 생성 -->
	<jsp:useBean id="bd" class="test.BeanDTO" scope="page" />
	
	<!-- setProperty 액션 태그로 bd 객체의 name, addr 프로퍼티에 값 저장 -->
	<jsp:setProperty name="bd" property="*"/>
		
	<%--
	위의 액션태그를 풀어쓰면 아래와 같음
	<jsp:setProperty name="bd" property="name" value="<%=name%>" />
	<jsp:setProperty name="bd" property="addr" value="<%=addr%>" />
	--%>

	<!-- getProperty 액션 태그로 bd 객체에 저장한 값 반환 -->
	<h2>
		이름: <jsp:getProperty name="bd" property="name" />
	</h2>
	<h2>
		주소: <jsp:getProperty name="bd" property="addr" />
	</h2>
		
	<!-- 표현식으로도 호출 가능 -->
	<b><%=bd.getAddr()%>의 <%=bd.getName()%>님 잘 오셨습니다.</b>
</body>
</html>