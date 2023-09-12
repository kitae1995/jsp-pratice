<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="id" value="${cookie.login_cookie.value}" />
	
	<c:choose>
		<c:when test="${id == null}">   <!-- EL에선 공백이 null이 아닌 그냥 공백임 -->
		<!-- 애초에 로그인을 안했던지 , 로그인이 만료된 상황 -->
		<h3>시간이 지나 자동 로그아웃 처리되었습니다.</h3>
		</c:when>
		<c:otherwise>
		<h3>${id }님 환영합니다!</h3>
		</c:otherwise>
	</c:choose>
	
	<a href="cookie_login.jsp">로그인 화면으로</a>

</body>
</html>