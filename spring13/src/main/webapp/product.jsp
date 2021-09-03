<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product</title>
</head>
<body>
<h3>Product insert page</h3>
<hr color="red">
<form action="prod.go">
	id: <input name="id"> <br>
	title: <input name="title"> <br>
	content: <input name="content"> <br>
	price: <input name="price"> <br>
	<button>게시판 글 작성!</button>
</form>
<hr color="red">
<form action="read2.do">
	id: <input name="id"> <br>
	<button>회원정보 검색</button> 
</form>
</body>
</html>