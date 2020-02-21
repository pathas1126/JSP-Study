<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>실제로 처리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String sports = request.getParameter("sports");
		String season = request.getParameter("season");

		// 세션 정보 가져오기
		// idKey 속성명에 해당하는 속성값 반환
		String id = (String) session.getAttribute("idKey");
		
		// 세션 고유 id 반환
		String sessionId = session.getId();
		
		// 세션 유지 시간 반환
		int interval = session.getMaxInactiveInterval();

		// id 값이 있는 경우 출력
		if (id != null) {
	%>
	<b><%=id%></b>님이 좋아하는 스포츠와 계절은?
	<br />
	<b><%=sports%>와 <%=season%>입니다.</b>
	<br />
	세션 id:<%=sessionId%>
	<br /> 
	세션 유지 시간: <%=interval%>
	<%
		// 출력 후 세션 연결 해제
		session.invalidate();
		} else {	// id가 null인 경우
			out.println("세션 연결 시간 초과. 재로그인 해주세요.");			
		}
	%>

</body>
</html>







