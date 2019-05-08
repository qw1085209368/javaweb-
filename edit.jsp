<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
      import="java.util.*,java.sql.*,org.web.model.vo.*,org.web.jdbc.*" %>
    
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改留言</title>
</head>
<body>
<% 
	{
	UserTable user3=null;
	user3=(UserTable)session.getAttribute("user");
		if(user3==null){
		
			response.sendRedirect("user_error.jsp");
		}
		else{
			%>
			<%@ include file="head.jsp" %>
			<%@ include file="edit_down.jsp" %>
			
			<%	
		}
	}
%>


</body>
</html>