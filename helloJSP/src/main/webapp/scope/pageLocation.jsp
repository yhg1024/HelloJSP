<%@page import="com.momo.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	//getAttribute 매서드의 반환 타입은 Object이므로 형변환이 필요합니다.
	Object page_str = pageContext.getAttribute("page");
	Object page_int = pageContext.getAttributesScope("page_int");
	Object page_p = pageContext.getAttribute("pagePerson");
%>

<br>String : <%= page_str == null ? "값 없음" : page_str %>
<br>int : <%= page_int == null ? "값 없음" : page_int %>
<br>person : <%= page_p == null ? "값 없음" : page_p %>

</body>
</html>