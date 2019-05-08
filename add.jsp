<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布留言</title>
</head>
<body>
<% 
	{
	UserTable user=null;
	user=(UserTable)session.getAttribute("user");
	if(user==null){
	
		response.sendRedirect("user_error.jsp");
	}
	}
%>
<%@ include file="head.jsp" %>
<%@ include file="add_down.jsp" %>
</body>
</html>