<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>게시글 등록 페이지</h2>
	<form action="/JspBasic/regist.board" method="POST">
		<input type="text" name="writer" placeholder="작성자"><br>
		<input type="text" name="title" placeholder="글 제목"><br>
		<textarea name="content" rows="5" cols="30" placeholder="게시글 내용을 입력하세요]"></textarea>
		<button type="submit" onclick="return confirm('등록하시겠습니까?')">등록</button> 
		 <!-- input type="button" value="등록"이랑 똑같음 type안주면 무조건 submit임-->	
		 <!-- return confirm = alert이랑 비슷한 경고창인데 alert과 다르게 확인과 취소가 나옴, 확인을 눌러야 submit이 작동함 -->
	</form>
	
	
</body>
</html>