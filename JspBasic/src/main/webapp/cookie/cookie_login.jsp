<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/JspBasic/cookie/login" method="post">
		<input type="text" name="id" size="10" placeholder="ID" value="${cookie.rememberId.value }">
		<input type="checkbox" name="rememberId" value="asdf"> <small sytle="font-size:0.7em">아이디 기억하기</small>
		<!-- 체크박스나 라디오같은 선택옵션에는 value로 값을 줘야함 , 선택지가 하나면 값에 아무말이나 써도 상관 X -->
		<!--  em의 뜻 = 부모의 폰트 대비 몇배로 ? 0.7em -> 부모폰트의 0.7배 -->
		<br>
		<input type="password" name="pw" size="10" placeholder="PW"><br>
		<input type="submit" value="로그인">
	</form>
	

</body>
</html>