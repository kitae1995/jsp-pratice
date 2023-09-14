<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시글 등록 페이지</h3>
<form action="/JspBasic/regist.board" method="POST">
<input type="text" name="writer" placeholder="작성자"><br>
<input type="text" name="title" placeholder="글 제목"><br>
<textarea rows="5" cols="30" name="content">게시글 내용을 입력하세요!</textarea>
<input type="button" value="등록" onclick="return confirm('등록하시겠습니까?')">
</form>

</body>
</html>