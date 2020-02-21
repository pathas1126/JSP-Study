<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read Cookie</title>
</head>
<body>
<%
	// 모든 쿠키를 읽어 와서 쿠키 배열에 저장
	Cookie[] cookies = request.getCookies();

	// 쿠키가 있는 경우 실행
	if(cookies != null){
		// 배열 형태로 저장했기 때문에 for문 사용
		for(Cookie cookie : cookies){
			// cookie 이름이 myCookie 라면 아래와 같이 출력
			if(cookie.getName().equals("myCookie")){ %>
				cookieName: <%=cookie.getName()%> <br />
				cookieValue: <%=cookie.getValue()%>				
	<%  }
		}
	}
%>
</body>
</html>