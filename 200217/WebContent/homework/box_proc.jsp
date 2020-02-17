<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
	int row = Integer.parseInt(request.getParameter("tr_cnt"));
	int cell = Integer.parseInt(request.getParameter("td_cnt"));
%>

</head>
<body>
	<table border="1" width="100%" height="100%">
		<%
			for (int i = 0; i < row; i++) {
		%>
		<tr>

			<%
				for (int j = 0; j < cell; j++) {
			%>
			<td width="50" height="30"></td>

			<%
				}
			%>

		</tr>

		<%
			}
		%>


	</table>
	<a href="#" onclick="history.back()">다시 입력하기</a>
</body>
</html>