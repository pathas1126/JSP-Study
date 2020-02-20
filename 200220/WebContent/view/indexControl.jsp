<!-- 데이터 전달용 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- 디자인을 하지 않는 경우 html 코드는 필요 없음 --%>

<%
	// /view/indexControl.jsp?CONTROL=intro&PAGE_NUM=01
	String CONTROL = null;
	String PAGE_NUM = null;
	
	// 데이터 전달받을 때는 예외처리를 해야 함
	try {
		CONTROL = request.getParameter("CONTROL");
		PAGE_NUM = request.getParameter("PAGE_NUM");
		System.out.println("CONTROL: " + CONTROL + ", PAGE_NUM: " + PAGE_NUM);

		// 매개변수를 전달 받지 못한 경우 임의로 변수 값 설정
		if (CONTROL.equals(null)) {
			CONTROL = "intro";
		}
		if (PAGE_NUM.equals(null)) {
			PAGE_NUM = "01";
		}

	} catch (Exception e) {
		System.out.println(e);
	}
%>

	<!-- 표현식으로 value 값 전달 -->
<jsp:forward page="/template/template.jsp">
	<jsp:param name="CONTROL" value="<%=CONTROL%>" />
	<jsp:param name="PAGE_NUM" value="<%=PAGE_NUM%>" />
</jsp:forward>
