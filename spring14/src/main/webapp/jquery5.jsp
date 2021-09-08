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
			var com = $('#word').val();
			$('#result').append('-' + com + '<br>');
		})
		
		$('#b2').click(function() {
			img = '<img src="resources/img/apple.png" width="100" height="100">'
			$('#result').append(img + '<br>');			
		})
		
		$('#b3').click(function() {
			var com = $('#word').val();
			img = '<img src="resources/img/apple.png" width="50" height="50">'
			$('#result').append(img+ ' ' + com + '<br>');
		})
		
	})

</script>
</head>
<body>
댓글 : <input id="word"><br>
<button id="b1">댓글 추가</button> 
<button id="b2">이미지 추가</button> 
<button id="b3">댓글 + 이미지 추가</button> 
<hr color="red">

<div id="result">

</div>
</body>
</html>