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

	<c:set var="age" value="${param.age }"/>
	
	# 이름: ${param.name }<br>
	# 나이: ${age}세<br>

	<c:choose>
		<c:when test="${age >= 20}">
			<c:choose> <!-- choose안의 choose 자바의 다중 if문과 유사함 -->
				<c:when test="${age >= 40}">
				<h3>당신은 장년층입니다</h3>
				</c:when>
				<c:otherwise>
				<h3>당신은 청년층입니다</h3>
				</c:otherwise>
			</c:choose>
		</c:when>
		
		<c:when test="${age >= 17}">
			<h3>당신은 고등학생입니다.</h3>
		</c:when>
		
		<c:when test="${age >= 14}">
			<h3>당신은 중학생입니다.</h3>
		</c:when>
		
		<c:when test="${age >= 8}">
			<h3>당신은 초등학생입니다.</h3>
		</c:when>
		
		<c:otherwise> <!-- if의 else문 느낌 위에 조건이 하나도 성립하지 않는다면? -->
			<h3>당신은 미취학 아동입니다.</h3>
		</c:otherwise>
	</c:choose>
	
	
</body>
</html>