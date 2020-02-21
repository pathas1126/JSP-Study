<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>계산기</h2>
		<hr />
		<form action="calResult.jsp" method="post">
			<input type="text" name="first" /> 
			<select name="oper">
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select> 
			<input type="text" name="second" /> <br /> 
			<input type="submit"	value="계산" /> 
			<input type="button" onclick="history.go(0)" value="다시 입력"/>
		</form>
		<hr />

	</center>
</body>
</html>