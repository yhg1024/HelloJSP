<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	page : 클라이언트 요청에따라 JSP페이지마다 하나씩 생성
	각 JSP 페이지는 page 영역을 사용하기 위한 pageContext 객체를 할당
 -->
<% 
	//setAttribute 해당 내장객체의 영역에 값을 저장
	
	// getAttribute 매서드의 반환 타입은 Object이므로 형변환이 필요합니다.
%>

 <h2>페이지 영역의 속성 값</h2>
 <ul>
 	<li>String : <%= page_str %></li>
 	<li>int : <%= page_int %></li>
 	<li>person : <%= page_p.getAge() %>/<%= page_p.getName() %></li>
 </ul>
 
 <h2>include된 page 영역에서 읽어오기</h2>
 <p>include지시어로 감싸 JSP파일은 포함관계를 가지므로 같은 페이지</p>
 <p>페이지 영역이나 변수등이 공유 됩니다.</p>
 
  <h2>페이지 이동 후 페이지 영역 읽어오기</h2>
  <!-- 페이지 요청 -->
 
 <!-- 링크 또는 form을 이용해서 페이지를 다시 요청하게 되면 페이지 영역이 초기화 됩니다. -->
 
 <!-- remove -->
 
  <h2>영역에 저장된 속성을 삭제</h2>
   <!--  removeAttribute 메서드는 값이 없는 경우 오류는 발생하지 않는다. 
 	getAttribute 메서드는 값이 없는 경우 null을 반환 한다.-->

</body>
</html>