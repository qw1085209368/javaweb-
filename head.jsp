<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="java.util.*,java.sql.*,org.web.model.vo.*,org.web.jdbc.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>
<link href="sys.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
</head>
<body>
<div id="b1">
	<img src="img/background_b.png" alt="" width="1423" height="182"/>
	<% 
	UserTable user=null;
	user=(UserTable)session.getAttribute("user");
	if(user==null){
	%>
     <div class="denglu">
     <form action="mainSerVlet"method="post">
     <table>
     	<tr><td><label>用户名： </label>	<input type="text" name="username" size="20"></td>
     		<td><label>密码： </label><input type="password" name="password" size="21"></td>
     		<td><button type="submit" value="登录" >登录</button></td>
     		<td> <a href="zfk_register.jsp">注册</a></td>
     	</tr>
     </table>
     </form>
       
      </div>
      <%
	}
	else{
		%>
		 <div class="denglu">
		 <label>用户名：<%=user.getUsername() %></label><a href="zfk_logout.jsp">注销</a>
		 
		  </div>
		<% 
	}
      %>

<table  class="leader">
	<tr>
		<td><a href="index.jsp" style="color: aliceblue" ><img src="img/button1.png"  /> </a></td>
		<td> <a href="add.jsp" style="color: aliceblue" > <img src="img/button2.png"  /></a></td>
		<td><a href="edit.jsp" style="color: aliceblue" > <img src="img/button3.png"  /></a></td>
		<td><a href="response.jsp" style="color: aliceblue" > <img src="img/button4.png"  /></a></td>	
	</tr>
</table>
</div>
</body>
</html>