<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>2. 요청 매개변수 읽기</h2>
	<!-- 스크립틀릿(자바코드) -->
	<% 
		// POST방식으로 전송된 값이 한글인 경우 깨져서 출력될 때 UTF-8로 인코딩
		
		// 전송되는 값이 하나라면 getParameter() 메소드로 받을 수 있음
		// 주로 type 속성이 text, radio, password,선택값이 하나인 checkbox
		
		
		// 여러개가 선택된 checkbox는 getParameterValues()로 받음,
		// 값이 2개 이상이므로 String 배열을 반환
		
		
		// for문을 이용해서 String 배열에 담긴 값들을 하나의 문자열로 합침
		
		
	%>
	
	<ul>
		<li>아이디 : <%= id %></li>
		<li>성별 : <%= sex %></li>
		<li>관심사항 : <%= favo %></li>
		<li>자기소개 : <%= intro %></li>
	</ul>
	
</body>
</html>