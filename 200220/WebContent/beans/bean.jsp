<!-- 자바빈이 나오게 된 배경 설명 예제 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	// 입력 -> 매개변수 전달 -> 각각의 값을 필드별로 저장하는 변수 저장
	// 선언문 -> 변수, 메소드 작성
	String str="선언문";
	String addr="";
	
	// 웹상에서는 생성자를 통해서 값을 지정하지 않음
	
	// Setter
	public void setStr(String s){
		str = s;
		System.out.println("setStr() 호출");
	}
	
	public void setAddr(String addr){
		this.addr  = addr;
	}
	
	// Getter
	public String getStr(){
		return str;
	}
	
	public String getAddr(){
		return addr;
	}
	
%>

Setter 메소드 호출 <% setStr("자바빈"); %> <br />
Getter 메소드 호출: <%=getStr() %>
</body>
</html>