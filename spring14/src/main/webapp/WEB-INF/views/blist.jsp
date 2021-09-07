<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체목록</title>
</head>
<body>

전체 프린트 : ${list} 
<hr>
<table border="1">
	<tr bgcolor="orange">
		<td width="100">id</td>
		<td width="100">제목</td>
		<td width="200">내용</td>
		<td width="100">작성자</td>
		<td width="100">상세페이지</td>
		<td width="70">삭제</td>
	</tr>
	<c:forEach items="${list}" var="dto">
		<tr bgcolor="orange">
		<td width="100">${dto.id}</td>
		<td width="100">${dto.title}</td>
		<td width="200">${dto.content}</td>
		<td width="100">${dto.writer}</td>
		<td width="100">
		 	<a href="one.do?id=${dto.id}">
		 		<button style="background-color: pink">상세페이지로</button>
		 	</a> 
		</td>
		<td width="70">
		 	<a href="delete.mega">
		 		<button style="background-color: red">삭제</button>
		 	</a> 
		</td>
	</tr>	
	</c:forEach>
</table>
</body>
</html>