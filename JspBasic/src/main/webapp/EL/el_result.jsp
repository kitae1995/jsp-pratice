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
	#data1 :<%session.getAttribute("data1"); %> <br>
	#data2 :<%application.getAttribute("data2"); %> <br>
	</p>
	
	<hr>
	
	<%--
        * EL에서 데이터를 참조할 때 영역을 명시하지 않는다면
        page(한페이지 안에서만 유효) -> request(요청과 응답영역에서만) -> session(브라우저가 꺼지면 죽음) -> application(서버가 살아있을동안 살아있음)
        = 수명의 길이 순
        순서대로 검색하여 찾아내 표현합니다.
        * 만약 서로 다른 내장 객체에 같은 이름의 데이터가 존재하는 경우
         내장객체명Scope.데이터이름 -> 특정 영역을 지목해서 가져올 수 있다.
     --%>
	<p>
		#data1 : ${sessionScope.data1 }<br>
		#data2 : ${data2 } <!--  값이 유일하다면 앞의 sessionScope 생략 가능 -->
	</p>

</body>
</html>