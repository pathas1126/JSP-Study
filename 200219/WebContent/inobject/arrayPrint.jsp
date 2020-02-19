<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("utf-8");
%>
</head>
<body>
<%
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String[] pet = request.getParameterValues("pet");
%>

<h3>이름: <%=name %></h3>
<h3>주소: <%=addr %></h3>

<h3>좋아하는 동물</h3>
	<%if(pet != null){ %>
		<%for(int i=0; i<pet.length; i++){%>
<h4><%out.println((i+1)+". ");%><%=pet[i] %></h4>
		<% }
	} else { %>
		<h3>좋아하는 동물이 없으시네요.</h3>
	<% } %>	
</body>
</html>