<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% 
    	
    	Random r = new Random();
    	int rnum = r.nextInt(900) + 100;
		    
    	String tel = request.getParameter("tel");
    	String f = tel.substring(0, 3);
    	String result = "111";
    	
    	if(f.equals("010")){
			result = "111";    		
    	}else if(f.equals("011")){
			result = "222";    		
    	}else {
			result = "333";    		
    	}
    	result = result + rnum;
    %><%= result %>