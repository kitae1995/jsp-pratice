<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<p>
		# 이름 : ${param.name }<br> <!-- name이란 이름을 가진 객체의 파라미터값을 가져와라 -->
		# 별명 : ${param.nick }<br> <!-- nick이란 이름을 가진 객체의 파라미터값을 가져와라 -->
	</p>
	
	<%
		session.setAttribute("data1", "hello~!");  // 이름.setAttribute  -> '이름'을 가진 저장소에 값을 넣는 명령어 이경우엔
												   //session에 data1이라는 이름으로 hello를 저장함
												   //근데 session , applaction 같은건 사용자가 만든 이름이 아니고 원래 있는 내장객체임
		application.setAttribute("data2","bye~!");
	%>
	
	<a href="el_result.jsp">세션,어플리케이션 데이터를 화면에 출력하기</a>
	
	
</body>
</html>