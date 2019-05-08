<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
<style type="text/css">
body
{
 text-decoration: none;
background:url(img/2.jpg) no-repeat;
background-position:300px -100px;
}
.group
{
padding: 0 40px;
margin: 0 0 25px 0;
position: relative;
text-align: center;
}
.btn1
{

font-size: 15px;
border-radius: 30px;
padding: 10px 25px;
border: none;
margin-top:200px;
margin-right: 10px;
text-align: center;
}
h2
{
text-align: center;
}
a:link  /*未访问时的状态*/
{ 
 color:black;

text-decoration: none;
} 
a:visited /*已访问的状态*/
{ 
 color:black;

text-decoration:none; 
} 


a:hover /*鼠标移动到链接上时的状态*/
{ 


color:#333333; 
text-decoration:none; 

} 
text-decoration:none; 

} 
a:active  /*鼠标按下去时的状态 */
{ 
 color:black;
text-decoration:none; 
}
</style>
</head>
<body>
<div class="btn1">
<form action="RegisterServlet" method="post">

	<table align="center">
	<tr><h2>用户注册</h2></tr>
	<tr><td>   用 &nbsp 户:</td>
		<td>  <input  class="form-control" type="text" id="username" name="username" > </td></tr>
	<tr><td>   密  &nbsp 码:</td>
		<td>  <input class="form-control" type="password" id="password" name="password" ></td></tr>
	<tr ><td  colspan="2" align="center"> <input   type="submit"  value="确认注册" /></td></tr>
	</table>
		<a href="index.jsp"  text-decoration: none >返回主页</a>
</form>
</div>
</body>
</html>