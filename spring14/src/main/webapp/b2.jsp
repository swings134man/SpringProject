<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% 
    	
    	int wea  = Integer.parseInt(request.getParameter("wea")); 
    	String tod  = request.getParameter("tod");
    	String wea2 = "";
    	if(wea >= 30) {
    		wea2 = "엄청덥군!";
    	}else {
    		wea2 = "가을이군!!";
    	}
    	
    %>오늘은 <%= tod %>인데 <%= wea2 %> 