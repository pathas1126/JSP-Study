<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지 실행</title>
<script>
	function test() {
		// 형식) window.open(불러올 파일명, 문서의 타이틀 제목, 창 옵션(width, height, left, top))
		//	window.open('./sub/send.html', 'w', 'left=500, top=300,width=400, height=300');
		window.open('/ServletTest/Notice', 'w', 'left=500, top=300,width=400, height=300');
	}
</script>
</head>
<body onload="test()">
	<h2>Welcome to JSP Study Site!!</h2>
</body>
</html>