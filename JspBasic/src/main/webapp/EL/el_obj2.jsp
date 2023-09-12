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
		
	# 이름: ${sessionScope.member.userName } <!-- el은 get,set이 따로 구현되있어도 이름만써도 알아서 구별함 -->
	# 아이디: ${member.userId }) <!--  유일하다면 sessionScope도 생략가능함 -->
	# 이메일: ${member.userEmail }) <!--  유일하다면 sessionScope도 생략가능함 -->
	# 비밀번호: ${member.userPw }) <!--  유일하다면 sessionScope도 생략가능함 -->
</p>

</body>
</html>