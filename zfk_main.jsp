<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,java.sql.*,org.web.model.vo.*,org.web.jdbc.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板信息</title>
</head>
<body>
<form action="displaySerVlet" method="post">
	<table border="0">
		
			<th align="left" width="500px">留言标题</th><th align="right" width="200px">留言时间</th>
		</tr>
	
		<%
		PreparedStatement pstmt=null;
		SqlSrvDBConn sqlsrvdb=new SqlSrvDBConn();
		Connection ct=sqlsrvdb.getConn();
		String date2="2008-8-8";
		String res;
		try {
		    String sql=String.format("select usertable.username,lyTable.* from lyTable,usertable where lyTable.userId=userTable.id");
			//pstmt=ct.prepareStatement(sql);
			
		    ResultSet rs=sqlsrvdb.executeQuery(sql);
		   
		    while(rs.next()){
		    	res="  (已回复)";
		    	date2=rs.getDate(4).toString();//日期
		    	if(rs.getString(7)==null)
		    	res="  (待回复)";
		    	%>	
				<tr>
				 <td align="left" width="500px"><a href="index.jsp?id=<%=rs.getInt(2)%>"><%=rs.getString(5)%><font color="red" size="1"><%=res %></font></a></td><!--标题  -->
				 	<td align="right" width="200px"><%=date2%></td> <!--发表时间  -->

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

</body>
</html>