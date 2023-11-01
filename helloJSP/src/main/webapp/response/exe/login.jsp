<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- id : momo pw : 1234 이면 
	loginOK로 페이지 전환
	아니면 오류 메세지를 출력 할수 있도록 main.페이지로 파라메터를 전달 -->

<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if("momo".equals(id) && "1234".equals(pw)) {
		// loginOK 페이지로 전환
		// 리다이렉트는 request영역이 공유되지 않음
		// 웹브라우저로 다른 페이지를 요청할 수 있도록 처리
		// 2번의 요청이 발생
		response.sendRedirect("loginOK.jsp?id=" + id);
	} else {
		// 오류 메세지 출력
		// 1번의 요청으로 페이지를 전환하므로 request영역이 공유가 된다.
		request.getRequestDispatcher("main.jsp?isErr=1")
		.forward(request, response);
	}
%>	
<!-- 
페이지 전환 2가지 방법
컨트롤러가 호출하는 방법
- sendRedirct
- forward

 -->
</body>
</html>