<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/out2.js"></script>
<script type="text/javascript">
function push() {
	n1 = document.getElementById("n1").value;
	n2 = document.getElementById("n2").value;
	
	n1v = parseInt(n1)
	n2v = parseInt(n2)
	arr = [n1v, n2v]
	return arr
}

function push1() {
	arr2 = push()
	result = add(arr2[0], arr[1])
	alert(result)
}
function push2() {
	arr2 = push()
	result = min(arr2[0], arr[1])
	alert(result)
}
function push3() {
	arr2 = push()
	result = mul(arr2[0], arr[1])
	alert(result)
}
function push4() {
	arr2 = push()
	result = div(arr2[0], arr[1])
	alert(result)
}

</script>
</head>
<body>
숫자1 : <input id="n1"> <br>
숫자2 : <input id="n2"> <br>

<button onclick="push1()">더하기</button>
<button onclick="push2()">빼기</button>
<button onclick="push3()">곱하기</button>
<button onclick="push4()">나누기</button>


</body>
</html>