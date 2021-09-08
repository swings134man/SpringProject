<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제이쿼리1</title>
<script type="text/javascript" src="resources/js/out.js"></script>
<script type="text/javascript">
	/* result = add(200,100); 
	alert(result); */

	function push() {
		n1v = document.ge
		result = add(i1,i2);
		alert(result);
	}
	
	function site(x) {
		location.href = "http://www." + x + ".com";
	}
	
	function go() {
		name = document.getElementById("site").value;
		site(name);
	}

</script>
</head>
<body>

숫자1 : <input id="n1"> <br>
숫자2 : <input id="n2"> <br>

<button onclick="push()">버튼</button>
<hr>
가고 싶은 사이트(naver, google, nate 중 입력) : <input id="site"> <br>
<button onclick="go()">사이트로 이동</button>


</body>
</html>