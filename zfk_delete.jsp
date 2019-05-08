<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,java.sql.*,org.web.model.vo.*,org.web.jdbc.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除</title>
</head>
<body>
<%
		PreparedStatement pstmt=null;
		SqlSrvDBConn sqlsrvdb=new SqlSrvDBConn();
		Connection ct=sqlsrvdb.getConn();
		
		int id=100;
			if(request.getParameter("id")!=null){
				id=Integer.parseInt(request.getParameter("id"));
			}
		try {
		 String sql=String.format("delete from lyTable where id=%d",id);
			pstmt=ct.prepareStatement(sql);
			pstmt.executeUpdate();
			response.sendRedirect("op_success.jsp");
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			response.sendRedirect("index.jsp");
		}
%>


</body>
</html>