<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com.dbconnect.DbConnect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div class="col-md-12">
     <button type="button" class="btn btn-primary" onclick="location.href='AdminLogin.jsp';">Home</button>
    </div>
<%
String name=request.getParameter("TeamName");
String OpTeamName=request.getParameter("OpTeamName");
out.print("Team Name="+name);
 //String id=request.getParameter("OpTeamName");
// String mail=request.getParameter("date");
 //String phone=request.getParameter("time");
 //location status
 //out.print(name);
   if(name!=null && OpTeamName!=null)
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
		 PreparedStatement ps=connection.prepareStatement("INSERT INTO schedulematch (Team, OpTeam,date,time,location,status) VALUES(?,?,?,?,?,?)");
		 ps.setString (1, request.getParameter("TeamName"));
		 ps.setString (2, request.getParameter("OpTeamName"));
		 ps.setString (3, request.getParameter("date"));
		 ps.setString (4, request.getParameter("time"));
		 ps.setString (5, request.getParameter("location"));
		 ps.setString (6, request.getParameter("status"));
		 ps.executeUpdate();
	 }
		 catch(SQLException e)
		 {
			 e.printStackTrace();
		 }
	 
	 if(connection!=null)
	 {
	 response.sendRedirect("AdminLogin.jsp");
	 }
	 
	 }
	 
 
 
 %>

</body>
</html>