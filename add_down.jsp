<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>
<link href="sys.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="b2"  >
   <img src="img/background_a.png" width="1423" height="594" />
    <div class="content">
    	   <%@ include file="zfk_main.jsp" %>
    </div>
  <div class="liuyan" style="width:250px;height:330px;"> 
  <form action="addSerVlet" method="post">
   <table>
   	<tr> <img src="img/liuyan.png"  alt=""/></tr>
   	<tr> <p>主题：</p></tr>
   	<tr><input  type="text" name="title" style="width:250px" /></tr>
   	<tr> <p>内容：</p></tr>
   	<tr><textarea name="content" style="width:250px;height:100px;"></textarea></tr>
   	<tr><br> <button type="submit" value="登录">发表</button></tr>
   </table>
   </form>

  </div>
 <div class="anniu">
  		<table>
  		<tr>
  			<td><a href="#"><img src="img/shouye.jpg" width="77" height="22" alt=""/></a></td>
  			<td><a href="#"><img src="img/shangyiye.jpg" width="77" height="22" alt=""/></a></td>
  			<td><a href="#"><img src="img/xiayiye.jpg" width="77" height="22" alt=""/></a></td>
  		</tr>
  	</table>
  </div>

</div>
</body>
</html>