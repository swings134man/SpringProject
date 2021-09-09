<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax2</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	
	$('#b1').click(function() {
	 	f11 = $('#f1').val();
	 	f22 = $('#f2').val();
		//alert(word);
		$.ajax({
			url: "b1.jsp",
			data: {
				like : f11,
				dis : f22
			},
			success: function(result) {
				alert(result);
				$('#di').append(result + "<br>");
			},
			error: function name() {
				alert('b1.jsp 호출 실패');
			}//error
		})//ajax
	})//click
	
	$('#b2').click(function() {
	 	wea = $('#d1').val();
	 	tod = $('#d2').val();
		//alert(word);
		$.ajax({
			url: "b2.jsp",
			data: {
				wea : wea,
				tod : tod
			},
			success: function(result) {
				alert(result);
				$('#di').append(result + "<br>");
			},
			error: function name() {
				alert('b2.jsp 호출 실패');
			}//error
		})//ajax
	})//click
})//func
</script>
</head>
<body>
먹고 싶은 음식 : <input id="f1"> <br>
먹기 싫은 음식 : <input id="f2"> <br>
<button id="b1">음식</button> <br>
<hr color="red">
오늘의 온도는 : <input id="d1"> <br>
오늘의 요일은 : <input id="d2"> <br>
<button id="b2">today</button> <br>

<div id="di"></div>

</body>
</html>