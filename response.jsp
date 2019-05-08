<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>回复</title>
</head>
<body>
<% 
	{
	UserTable user4=null;
	int user_right=3;
	user4=(UserTable)session.getAttribute("user");
	
	if(user4!=null)
		user_right=user4.getUser_right();
	
	if(user4!=null&&user_right==0){
	%>
		
		<%@ include file="head.jsp" %>
		<%@ include file="response_down.jsp" %>
		
		<% 
		
		//response.sendRedirect("index.jsp");
	}
	else{
	
		response.sendRedirect("user_error.jsp");
	}
	}
%>

</body>
</html>