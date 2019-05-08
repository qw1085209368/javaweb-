<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.sql.*,org.web.model.vo.*,org.web.jdbc.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在此处插入标题</title>
<link href="sys.css" rel="stylesheet" type="text/css">
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
		
		//PreparedStatement pstmt=null;
		SqlSrvDBConn sqlsrvdb=new SqlSrvDBConn();
		Connection ct=sqlsrvdb.getConn();
		UserTable user2=null;
		user2=(UserTable)session.getAttribute("user");
		int userid=2;
		    userid=user2.getId();
		try {
		    String sql=String.format("select usertable.username,lyTable.* from lyTable,usertable where lyTable.userId=userTable.id and userId=%d ",userid);
			//pstmt=ct.prepareStatement(sql);
			
		    ResultSet rs=sqlsrvdb.executeQuery(sql);
			String date=" ";
			String res;
		    while(rs.next()){
		    	res="  (已回复)";
		    	date=rs.getDate(4).toString();//日期
		    	if(rs.getString(7)==null)
			    	res="  (待回复)";
		    	%>	
				<tr>
					<td align="left" width="500px"><a href="edit.jsp?id=<%=rs.getInt(2)%>"><%=rs.getString(5)%><font color="red" size="1"><%=res %></font></a></td><!--标题  -->
				 	<td align="right" width="200px"><%=date%></td> <!--发表时间  -->
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
  <div class="xiugai" style="width:250px;height:330px;"> 
  <form action="updateServlet" method="post">
   <table>
	   <tr> <img src="img/xiugai.png"  alt=""/></tr>
	   <%
  		int id=100;
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
			if(rs.getString(7)!=null){
				%>
				<script type="text/javascript" language="javascript">        
		        alert("当前留言已被回复，修改失败!");   
		       location.href="edit.jsp";  
		</script>   
				
				<% 
			}
		    
	    	}
	    }catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
  	%>
	   <tr><p>主题：<%=theme%></p></tr>
	   <tr><p>作者：<%=writer%></p></tr>
	   <tr><p>日期：<%=date%></p></tr>
	   <tr><p>内容：</p></tr>
	   <tr><textarea name="content" style="width:250px;height:100px;"><%=content%></textarea></tr>
	 <%--   <tr><label name="id"><%=id%></label></tr> --%>
	   	<input type="hidden" name="id" size="20" value="<%=id%>">
	   <tr> <br><td><input type="submit" value="修改"></td>
	   			<td> <a href="zfk_delete.jsp?id=<%=id%>"><input type="button" value="删除"></a></td>
	   </tr>
   </table>
  </form>

     
  </div>
 <div class="anniu">
  	<a href="#"><img src="img/shouye.jpg" width="77" height="22" alt=""/></a>
  	<a href="#"><img src="img/shangyiye.jpg" width="77" height="22" alt=""/></a>
  	<a href="#"><img src="img/xiayiye.jpg" width="77" height="22" alt=""/></a>
  </div>

</div>
</body>
</html>