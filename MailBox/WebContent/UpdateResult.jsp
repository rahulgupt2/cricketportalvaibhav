<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*" %>
 <%@ page import="com.dbconnect.DbConnect" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String date=request.getParameter("date");
String status=request.getParameter("status");
out.print("Date="+request.getParameter("teamName"));

if(date!=null)
{
	 Connection con;
     DbConnect dbcon=new DbConnect();
     con=dbcon.getConnection();
     PreparedStatement statement = con.prepareStatement("select * from schedulematch where date=?") ;
     statement.setString(1, date);
     ResultSet resultset = 
     statement.executeQuery();
     if(resultset.next())
     {
      statement=con.prepareStatement("Update schedulematch set status=? where date=?");
      statement.setString(1, status);
      statement.setString(2, date);
      statement.executeUpdate();
      out.print("Record Found"+resultset.getString(3));	 
     }
     
     response.sendRedirect("AdminLogin.jsp");
     
}
%>


</body>
</html>