<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.io.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.dbconnect.DbConnect" %>

 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <%
 String name=request.getParameter("name");
 String id=request.getParameter("emp_id");
 String mail=request.getParameter("email");
 String phone=request.getParameter("phone");
 out.print(name);
 if(name!=null && id!=null)
 {
	 Connection connection=null;
	 try
	 {
		 DbConnect dbcon=new DbConnect();
		 connection=dbcon.getConnection();
		 if(connection==null)
		 {
			 out.print("Database Error");
		 }
		 PreparedStatement ps=connection.prepareStatement("INSERT INTO player (P_id, P_name,email,phone) VALUES(?,?,?,?)");
		 ps.setString (1, id);
		 ps.setString (2, name);
		 ps.setString (3, mail);
		 ps.setString (4, phone);
		 ps.executeUpdate();
	 }
		 catch(SQLException e)
		 {
			 e.printStackTrace();
		 }
	 
	 if(connection!=null)
	 {
	 response.sendRedirect("Success.html");
	 }
	 
	 }
	 
 
 
 %>
<!--<jsp:include page="Success.html"></jsp:include>-->


