<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="resources/js/out2.js"></script>
<script type="text/javascript">
	$(function() {
	//body 부분을 먼저 ram에 읽어들여라
	//버튼을 클릭했을 때 n1과 n2의 값을 가지고 오자. 
	$('#add').click(function() {
		n1 = document.getElementById("n1").value;
		n2 = document.getElementById("n2").value;
		
		n1v = parseInt(n1)
		n2v = parseInt(n2)
		arr = [n1v, n2v]
		arr2 = push()
		result = add(arr2[0], arr[1])
		alert(result)
		})
$('#add').click(function() {
		n1 = document.getElementById("n1").value;
		n2 = document.getElementById("n2").value;
		
		n1v = parseInt(n1)
		n2v = parseInt(n2)
		arr = [n1v, n2v]
		
		})
	
	
	
	
	
	
	})
</script>
</head>
<body>
숫자1 : <input id="n1"> <br>
숫자2 : <input id="n2"> <br>
<button id="add">더하기</button>
<button id="min">빼기</button>
<button id="mul">곱하기</button>
<button id="div">나누기</button>
</body>
</html>