<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="java.util.*,java.sql.*,org.web.model.vo.*,org.web.jdbc.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>回复</title>
<link href="sys.css" rel="stylesheet" type="text/css">
<style type="text/css">
</style>
</head>
<body>
<div id="b2"  >
  <img src="img/background_a.png" width="1423" height="594" />
   <div class="content">
        <form action="" method="post">
	<table border="0">
		
		<tr>
			<th align="left" width="500px">留言标题</th><th align="right" width="200px">留言时间</th>
		</tr>
	
		<%
		PreparedStatement pstmt=null;
		SqlSrvDBConn sqlsrvdb=new SqlSrvDBConn();
		Connection ct=sqlsrvdb.getConn();
		try {
		    String sql=String.format("select usertable.username,lyTable.* from lyTable,usertable where lyTable.userId=userTable.id");
			//pstmt=ct.prepareStatement(sql);
			String date;
			String res;
		    ResultSet rs=sqlsrvdb.executeQuery(sql);
		    while(rs.next()){
		    	 res="  (已回复)";
		    	date=rs.getDate(4).toString();//日期
		    	if(rs.getString(7)==null)
			    	res="  (待回复)";
		    	%>	
				<tr>
				 <%--    <td><%=rs.getInt(2)%></td><!--  发表编号--> --%>
				 	<td align="left" width="500px"><a href="response.jsp?id=<%=rs.getInt(2)%>"><%=rs.getString(5)%><font color="red" size="1"><%=res %></font></a></td><!--标题  -->
				 	<td align="right" width="200px"><%=date%></td> <!--发表时间  -->
					<%-- <td><%=rs.getString(1) %></td><!--  发表人姓名--> --%>
				
				
				<%-- 	<td><%=rs.getString(6)%></td> <!--发表内容  --> --%>
				</tr>
				<%
		    	
		    }
			
			
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}

			%>
			</table>
		
		</form>
   
   </div>
   
     <%
 	  
  		int id=999;
  		if(request.getParameter("id")!=null){
  			id=Integer.parseInt(request.getParameter("id"));
  			
  		}
  		
  		String theme="";
  		String content="";
  		String writer="";
  		String date="";
  		String rep="";

	try {
	    String sql=String.format(" select b.username,a.* from lyTable a left join usertable b on a.userId=b.id   where a.id=%d",id);
		//pstmt=ct.prepareStatement(sql);
		
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
  <div class="huifu">
    <form action="update_response_Servlet" method="post">
  <table>
  	<tr><img src="img/huifu.png"  alt=""/></tr>
	<tr><td><p>主题：</p></td><td><label><%=theme%></label></td></tr>
  	<tr><td><p>作者：</p></td><td><label><%=writer%> </label></td></tr>
  	<tr><td><p>日期：</p></td><td><label><%=date%> </label></td></tr>
  	<tr><td><p>内容：</p></td><td><label><%=content%></label></td></tr>
  	<tr><td><p>回复：</p></td></tr>
  </table>
		<div class="xiugaikuang">
			&nbsp  <textarea name="huifu" rows="10" cols="40"><%=rep %></textarea> 
		<br><input type="submit" value="回复"/>
		</div>
  </div>
  	<input type="hidden" name="id" size="20" value="<%=id%>">
  
    </form>
  
  <div class="anniu1">
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