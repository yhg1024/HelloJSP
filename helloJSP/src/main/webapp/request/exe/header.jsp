<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>3. 요청 헤더 정보 읽기</h2>
	<% 
		// getHeaderNames() 메서드는 모든 요청 헤더의 이름을 반환
		// 반환 타입은 Enumeration
		Enumeration<String> headers = request.getHeaderNames();
		
		// 헤더명, 헤더값 얻기
		// while문에서 hasMoreElements()를 이용해 출력할 요청 헤더명이 더 있는지 확인
		while(headers.hasMoreElements()) {
			// 헤더명이 더 있다면 요청 헤더의 이름을 획득
			String headerName = headers.nextElement();
			// getHeader() 메서드에 헤더명을 건네 헤더값을 얻어옴
			String headerValue = request.getHeader(headerName);
			
			out.print("헤더명 : " + headerName + " / ");
			out.print("헤더값 : " + headerValue + "<br>");
		}
		
	%>
</body>
</html>