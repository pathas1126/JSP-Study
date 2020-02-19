<%-- 배열 데이터 입력 페이지 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다중 선택</title>
</head>
<body>

<form action="arrayPrint.jsp" method="post">
	이름: <input type="text" name="name" /> <br />
	주소: <input type="text" name="addr" />
	<fieldset>
	<legend>좋아하는 동물</legend> 
	<input type="checkbox" name="pet" value="dog" /> 강아지
	<input type="checkbox" name="pet" value="cat" /> 고양이
	<input type="checkbox" name="pet" value="cow" /> 송아지
	<input type="checkbox" name="pet" value="horse" /> 망아지
	</fieldset>
	<input type="submit" value="전송"/>
</form>

</body>
</html>