<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bbs</title>
</head>
<body>
bbs page ! 
<hr color="red">
<form action="bbs.mega">
	id: <input name="id"> <br>
	title: <input name="title"> <br>
	content: <input name="content"> <br>
	writer: <input name="writer"> <br>
	<button>게시판 글 작성!</button>
</form>
<hr color="red">
<form action="read1.do">
	id: <input name="id"> <br>
	<button>회원정보 검색</button> 
</form>
<hr>

<a href="blist.mega">전체목록 가져오기</a>


</body>
</html>