<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
	<!-- <a>태그로 만든 링크이므로 GET방식으로 전송되고,
		링크뒤에는 2개의 매개변수가 쿼리스트링으로 전달
		method를 지정하지 않은 경우 get방식으로 호출 -->
	<a href="webInfo.jsp?en=Hell&han=안녕">GET 방식 요청</a>
		
	<h2>2. 클라이언트의 요청 매개변수 읽기</h2>
	<!-- <form>태그를 사용하여 POST방식으로 요청을 전송. 다양한 <input>태그를 사용 -->
	<form action="parameter.jsp" method="post">
		아이디: <input type="text" name="id" value="momo">
				<!-- name 속성 value 값으로 정보를 넘긴다. -->
		<br>		
		성별 : <input type="radio" name="sex" value="man"> 남성
			  <input type="radio" name="sex" value="woman"> 여성
		<br>
		관심사항 : <input type="checkbox" name="favo"	value="eco"> 경제
				<input type="checkbox" name="favo" value="pol">정치
				<input type="checkbox" name="favo" value="romance">연애
		
		<br>
		자기소개 : <textarea rows="4" cols="30" name="intro">만나서 반갑습니다.</textarea>
		
		<button>전송</button>
	</form>
	
	
	<h2>3. HTTP 요청 헤더 정보 읽기</h2>
	<!-- HTTP요청 헤더를 읽기 위한 링크를 생성 -->
	<a href="header.jsp">요청 헤더 정보 읽기</a>
</body>
</html>