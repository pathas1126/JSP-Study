<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:useBean id="cc" class="test.calDTO"/>

<jsp:setProperty name="cc" property="*" />

<% cc.print(); %>
<b>계산결과: <%=cc.calculate()%></b>

