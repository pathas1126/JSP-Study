<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	int first = Integer.parseInt(request.getParameter("first"));
	int second = Integer.parseInt(request.getParameter("second"));
	String oper = request.getParameter("oper");
	System.out.println(first);
	System.out.println(second);
	System.out.println(oper);
%>

<jsp:useBean id="cc" class="test.calDTO" scope="page" >

<jsp:setProperty name="cc" property="*" />
</jsp:useBean>

<b>계산결과: <%=cc.calculate()%></b>