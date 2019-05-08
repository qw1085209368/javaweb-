<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.Date"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="java.util.*,java.sql.*,org.web.model.vo.*,org.web.jdbc.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页</title>
<link href="sys.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
</head>
<body>
<div id="b2"  >
   <img src="img/background_a.png" width="1423" height="594" />
   <div class="content">
 
  <%@ include file="zfk_main.jsp" %>
   </div>
  <div class="chakan" style="width:250px;height:330px;">
  <table>
  	<tr><img src="img/chakan.png"  alt=""/></tr>
  	
  	<%
  		int id=999;
  		if(request.getParameter("id")!=null){
  			id=Integer.parseInt(request.getParameter("id"));
  		}
  		
  		String theme="";
  		String content="";
  		String writer="";
  		String date=" ";
  		String rep="";
		try {
	    String sql=String.format(" select b.username,a.* from lyTable a left join usertable b on a.userId=b.id   where a.id=%d",id);
		
	    ResultSet rs=sqlsrvdb.executeQuery(sql);
	    while(rs.next()){
	    	theme=rs.getString(5); //主题
	    	writer=rs.getString(1);//作者
	    	date=rs.getDate(4).toString();//日期
	    	content=rs.getString(6);//内容
			rep=rs.getString(7);
	    	if(rep==null){rep=" ";} ;
	    	}
	    }catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
  	%>
	<tr><td><p>主题：</p></td><td><label><%=theme%></label></td></tr>
  	<tr><td><p>作者：</p></td><td><label><%=writer%> </label></td></tr>
  	<tr><td><p>日期：</p></td><td><label><%=date%> </label></td></tr>
  	<tr><td><p>内容：</p></td><td><label><%=content%></label></td></tr>
  	<tr><td><p>回复：</p></td><td><label><font  size="3"  color="red"><%=rep%></font></label></td></tr>
  </table>
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