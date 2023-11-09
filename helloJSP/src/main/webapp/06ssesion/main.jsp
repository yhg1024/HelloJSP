<%@page import="com.momo.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 성공</h2>
	<%= session.getAttribute("userId") %>님 환영합니다. 
	<a href="logoutProcess.jsp">로그아웃</a>
	<% 
		// 오류발생 하지 않도록 null 처리
		if(session.getAttribute("memberDto") != null) {
		MemberDto dto = (MemberDto)session.getAttribute("memberDto");

		
	%>
	아이디 : <%= dto.getID() %>
	이름 : <%= dto.getNAME() %>
	등록일 : <%= dto.getREGIDATE() %>
	
	<% } %>
</body>
</html>