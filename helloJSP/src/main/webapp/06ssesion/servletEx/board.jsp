<%@page import="java.awt.Button"%>
<%@page import="java.util.List"%>
<%@page import="com.momo.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	// 화면에서 동적인 처리
	window.onload=function(){
		console.log('fsd');
		let logoutBtn = document.querySelector("#logoutBtn");
		let loginBtn = document.querySelector("#loginBtn");
		if(logoutBtn != null) {
			logoutBtn.onclick=function(){
				// 로그아웃
				loginForm.action="/logout";
				loginForm.submit();
			}
		}
		if(loginBtn != null) {
			loginBtn.addEventListener('click', function(){
			// 로그인페이지로 이동
			loginForm.action="loginForm.jsp";
			loginForm.submit();
				
			});
		}
	}

</script>
<!-- 로그인 여부를 체크
	로그인을 했을때 = 세션에 userId가 저장되어 있으면
		- 로그아웃 버튼을 출력
	없으면
		- 로그인 버튼을 출력
 -->
 <!-- 
 	submit : form의 요소들을 파라메터로 가지고 서버에 요청
 	action : 서버에 요청항 url 주소
 	method : 요청 방식
 				get : 조회용 파라메터
 				post : 등록, 수정용 파라메터
 	*버튼 생성했더라도  form안에 버튼이 하나밖에 없다면 해당 버튼은 서브밋 버튼이 된다.
  -->
	 <form method="get" name="loginForm">
	 <% 
	 	// getAttribute의 반환 타입은 Object이므로 형변환이 필요합니다.
	 	// nullpointException을 방지하기 위해서 null체크를 진행
	 	// 로그인 버튼이 나오려면 - 
	 	// 로그아웃 버튼이 나오려면
	 	if(session.getAttribute("userId") != null 
	 		&& !"".equals(session.getAttribute("userId").toString())) {
	 		// 로그인한 사용자 - 로그아웃버튼 -> 세션을 만료 시키고 로그인페이지로 이동
	%>
		<%= session.getAttribute("userId") %> 님 환영합니다.
		 <button id="logoutBtn">로그아웃</button>
	<% 		
	 	} else {
	 		// 로그인하지 않은 사용자 - 로그인버튼 출력 -> 로그인 페이지로 이동
	%>
		 <button id="loginBtn">로그인</button>
	<%  		
	 	}
	 %>
	 
	 <table border="1">
		<tr>
			<th>일련변호</th>
			<th>제목</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		<%
			if(request.getAttribute("list") != null) {
				List<BoardDto> list = (List<BoardDto>)request.getAttribute("list");
				for(BoardDto dto : list){		
		%>
		
		<tr>
			<td><%= dto.getNum()%></td>
			<td><%= dto.getTitle()%></td>
			<td><%= dto.getContent()%></td>
			<td><%= dto.getId()%></td>
			<td><%= dto.getPostdate()%></td>
			<td><%= dto.getVisitcount()%></td>
		</tr>
	
		<%		}
			} %>
	</table> 
	 </form>
</body>
</html>