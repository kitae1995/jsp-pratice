<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

<!-- 아이디보다 저 명시도점수를 높은 경우 : !important를 준 css , 인라인방식으로 input에다가 직접 width를 주는경우

#input-age{	<!--명시도점수, 우선점수 100점 , 아이디로 직접지정하면 우선순위가 매우 높음-->
	width:300px;
}

.form-input .form-control{ <!--명시도점수 , 우선점수 10점 -->
	width:200px
}




</style>
</head>
<body>

	<form action="JspBasic/resp">
		나이: <input id="input-age" class="fomr-input form-control" type="text" name="customerAge" maxlength="2"><br>
		<input type="submit"" value="확인">
		 
	</form>

</body>
</html>