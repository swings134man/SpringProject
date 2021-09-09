<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	
	
	$('#b3').click(function() {
		 userv = $('#user').val()
		  $.ajax({
			 url: "check2.mega",
			 data: {
				id : userv
			 },
			 success : function(result) {
				$('#d1').append(result + "<br>");
			},
			error: function() {
				alert('오류발생! 다시시도하세요')
			}
		 })//ajax
	})// b3
	
})//func
</script>
</head>
<body bgcolor="orange">
회원가입할 id입력 : <input id="user"> <button id="b3" style="background-color: yellow">회원가입시 id중복 체크</button> 
<hr color="red">
<div id="d1"></div>


</body>
</html>