<%@page import="com.dbconnect.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<div class="col-md-12">
<button type="button" class="btn btn-primary" onclick="location.href='cricket.jsp';">Back</button>
</div>

  <% 
        Connection con;
        DbConnect dbcon=new DbConnect();
        con=dbcon.getConnection();
        Statement statement = con.createStatement() ;
        ResultSet resultset = 
        statement.executeQuery("select * from schedulematch where status!= '' "); 
  
 %>
<div class="container">
   <table class="table">
    <thead>
      <tr>
        <th>Team</th>
        <th>OpTeam</th>
        <th>Date</th>
        <th>Time</th>
        <th>Location</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
    <% while(resultset.next()){ %>
            <TR class="success">
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
                <TD> <%= resultset.getString(5) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
                
            </TR>
            <% } %>
         </tbody>
  </table>
</div>
</body>
</html>
