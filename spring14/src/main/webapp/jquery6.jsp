<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$.ajax({
				url : "ios.jsp",
				success : function(data) { // 호출한 결과를 받아오고싶으면 변수를 넣어줌. 
					alert('성공이닷.');
					alert(data);
					$('#result').append(data + "<br>");
				} ,
				error : function() {
					alert('시,,,실패닷,,,,');
				}
			})//ajax 
		})//click
		
		$('#b2').click(function() {
			$.ajax({
				url : "a.jsp",
				success : function(data) { 
					$('#result').append(data + "<br>");
				} ,
				error : function() {
					alert('에러발생. 다시시도하세요');
				}
			})//ajax 
		})//click
		
		$('#b3').click(function() {
			$.ajax({
				url : "b.jsp",
				success : function(data) {
					$('#result').append(data + "<br>");
				} ,
				error : function() {
					alert('에러발생. 다시시도하세요');
				}
			})//ajax
		})//click
		
	})//func

</script>
</head>
<body>
<button id="b1">ajax</button> <button id="b2">a페이지</button> <button id="b3">b페이지</button><br>

ajax실행 결과 <br> 
<div id="result"></div>


</body>
</html>