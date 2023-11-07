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
		/* redirect - 2번 요청 : A,B로 보내는데 A를 건너뛰고 B로 바로 갈 수 있다. */
		response.sendRedirect("loginOK.jsp?id=" + id);
	} else {
		// 오류메세지 출력 - 오류값 전달
		// 1번의 요청으로 페이지를 전환하므로 request 영역이 공유가 된다.
		request.getRequestDispatcher("main.jsp?loginErr=1")
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