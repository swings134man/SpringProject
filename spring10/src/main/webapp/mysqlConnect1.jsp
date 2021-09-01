<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mysql1</title>
</head>
<body>
<%
	//1. driver 설정
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1. Driver 설정 성공. <br>");
	
	//2. DB연결
	String url = "jdbc:mysql://database-2.cczrawidh5uu.us-east-2.rds.amazonaws.com/shop";
	String user = "root";
	String password = "*mega709";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2. DB 연결 설정 성공. <br>");
	
	//3. SQL객체
	/* String sql = "insert into member values ('rds','rrr','abc','01234')";
	PreparedStatement ps = con.prepareStatement(sql);
	out.print("3. SQL 객체 설정 성공. <br>"); */
	
	//4. SQL문 전송
	/*// ps.executeUpdate();
	out.print("3. SQL 전송 성공. <br>"); */
%>

</body>
</html>