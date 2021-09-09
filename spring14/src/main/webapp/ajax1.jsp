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
	
	$('#b1').click(function() {
	 	wordValue = $('#word').val();
		//alert(word);
		$.ajax({
			url: "test.jsp",
			data: {
				word : wordValue
			},
			success: function(result) {
				alert('test.jsp 호출 성공');
				$('#d1').append(result + "<br>");
			},
			error: function name() {
				alert('test.jsp 호출 실패');
			}//error
		})//ajax
	})//click
	
	$('#b2').click(function() {
		 money = $('#money').val()
		 pay = $('#pay').val()
		 $.ajax({
			 url: "money.jsp",
			 data: {
				money : money,
				pay : pay
			 },
			 success : function(result) {
				$('#d1').append("당신이 결제할 금액은 : "+ result + "<br>");
			},
			error: function() {
				alert('오류발생! 다시시도하세요')
			}
			 
		 })//ajax
	})//b2
	
	$('#b3').click(function() {
		 userv = $('#user').val()
		  $.ajax({
			 url: "user.jsp",
			 data: {
				user : userv
			 },
			 success : function(result) {
				$('#d1').append(result + "<br>");
			},
			error: function() {
				alert('오류발생! 다시시도하세요')
			}
		 })//ajax
	})// b3
	
	$('#b4').click(function() {
		 telv = $('#tel').val()
		  $.ajax({
			 url: "tel.jsp",
			 data: {
				tel : telv
			 },
			 success : function(result) {
				$('#d1').append(result + "<br>");
			},
			error: function() {
				alert('오류발생! 다시시도하세요')
			}
		 })//ajax
	})//b2
	
})//func
</script>
</head>
<body bgcolor="orange">
<h3>비동기 통신으로 서버와 통신하기</h3> <br>
ajax 테스트 : <input id="word"> <button id="b1">ajax 테스트(test.jsp)</button> <br>
<hr>
결제금액 : <input id="money"> <br>
1)계좌이체, 2)신용카드, 3)휴대폰결제 <br>
결제수단 : <input id="pay"> <button id="b2" style="background-color: red">결제하기</button> 
<hr color="red">
회원가입할 id입력 : <input id="user"> <button id="b3" style="background-color: yellow">회원가입시 id중복 체크</button> 
<hr color="red">
인증받을 전화번호 입력 : <input id="tel"> <button id="b4" style="background-color: green">인증번호 받기</button>
<hr color="green">
<div id="d1"></div>


</body>
</html>