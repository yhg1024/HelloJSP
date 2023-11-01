<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>로그인</h2>
<% 
	String isErr = request.getParameter("isErr");
	String id = "momo";
	if (request.getParameter("id") != null) {
		id = request.getParameter("id");
	}
%>
<%= "1".equals(isErr) ? "아이디 비밀번호를 확인해주세요" : "" %>
<form action="login.jsp" method="post">
아이디 : <input type="text" name="id" value="<%=id%>">
비밀번호 : <input type="password" name="pw" value="1234">
<button>로그인</button>
</form>
</body>
</html>