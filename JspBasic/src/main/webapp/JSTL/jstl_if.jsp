<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- jstl을 사용하기 위해서는 외부 태그 라이브러리 선언을 해 주어야 합니다. --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
        JSTL의 c:set으로 변수를 선언하면 EL 안에서 활용이 가능합니다.
        값도 EL을 이용해서 매겨줄 수 있습니다.
        EL이 타입을 자동으로 인식해서 정해줍니다.
        c:set을 이용해서 지정한 변수는 스크립틀릿의 자바 변수와는 다릅니다.
        내장객체에 지정하는 데이터로 활용되기 때문에 EL이 가능한 거에요~
     --%>
	
	<c:set var="age" value="${param.age }" scope="session"/> <!--  scope를 설정하지않으면 가장 기본값인 page -->
	<!--  session에 age라는 저장소를 만들어줌(값은 미정했으니 없음) -->
	
	<p>
		나이 : ${age }세 <!-- age를 가져옴 el문을 안쓴다면 객체를 받는등의 여러 과정을 거쳐서 불러야함-->
		
		<c:if test="${age >= 20 }">   <!-- jstl의 c:if는 else문이 없음, else까지 쓰고싶으면 다른걸 불러야함 아니면 두번 쓰던지 -->
		<h2>당신은 성인입니다.</h2>
		</c:if>
		
		<c:if test="${age <20 }">
		<h2>당신은 미성년자입니다.</h2>
		</c:if>
		
	</p>
	

</body>
</html>