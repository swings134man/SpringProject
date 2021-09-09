<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
		String user = request.getParameter("user");
    	String[] list = {"root","summer","park"};
		String result = "중복된 아이디가 없습니다. 가입 가능합니다.";
		
		for(String data: list) {
			if(data.equals(user)){
				result = "중복된 아이디입니다. 가입불가능합니다.";
			}
		}
    %><%= result %>