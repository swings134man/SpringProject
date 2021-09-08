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
		$('#bt1').click(function() {
			var idc = $('#id').val().length;
			if (idc >= 5) {
				$('#result').text("유효한 아이디입니다.");
			}else {
				$('#result').text("유효하지 않은 아이디입니다.");
				$('#id').val('');
			}
		})
		
		$('#bt2').click(function() {
			var pwc = $('#pw').val();
			var pwc2 = $('#pw2').val();
			
			if (pwc == pwc2) {
				$('#result').text("패스워드가 동일합니다.");
			}else {
				$('#result').text("패스워드가 동일하지않습니다.");
				$('#pw').val('');
				$('#pw1').val('');
			}
		})
		
	})

</script>
</head>
<body>
아이디 입력 : <input type="text" id="id"> <br>
<button id="bt1">아이디 유효성 검사</button> <br>
패스워드 입력 : <input type="text" id="pw"> <br>
패스워드 입력 확인 : <input type="text" id="pw2"> <br>
<button id="bt2">암호 유효성 검사</button> <br>
<hr>
<div id="result">

</div>
</body>
</html>