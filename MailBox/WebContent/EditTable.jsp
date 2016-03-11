<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.dbconnect.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
</head>
<body body background="images/c2.jpg">
<div class="col-md-12">
<button type="button" class="btn btn-primary" onclick="location.href='AdminLogin.jsp';">Home</button>
        
        </div>

<%
        Connection con;
        DbConnect dbcon=new DbConnect();
        con=dbcon.getConnection();
        Statement statement = con.createStatement() ;
        ResultSet resultset = 
        statement.executeQuery("select * from player"); 
        %>
<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        
        <div class="table-responsive">

              
            
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   
                   <th>PlayerId</th>
                    <th>Player Name</th>
                     <th>Email</th>
                     <th>Contact</th>
                      <th>Edit</th>
                      <th>Delete</th>
                   </thead>
    <tbody>
   
    <% while(resultset.next()){ %>
     <tr>
    
    <form action="EditPlayer.jsp" method="GET">
    												
    <td><input type="text"  class="form-control" name="pid<%= resultset.getString(5) %>" value="<%= resultset.getString(1) %>"></td>
    <td><input type="text"  class="form-control" name="name<%= resultset.getString(5) %>" value="<%= resultset.getString(2) %>"></td>
    <td><input type="text"  class="form-control" name="email<%= resultset.getString(5) %>" value="<%= resultset.getString(3) %>"></td>
    <td><input type="text"  class="form-control" name="contact<%= resultset.getString(5) %>" value="<%= resultset.getString(4) %>"></td>
    <input type="hidden" name="name of form" value="<%= resultset.getString(5) %>"/>
     <td><button type="submit" class="btn btn-primary" data-title="Edit" data-toggle="modal">Update</button></td>
       <td><button type="button" class="btn btn-danger" onclick="location.href='EditPlayer.jsp?key=<%= resultset.getString(5) %>';"  />Delete</button></td>
    </form>
    </tr>
    <% } %>
   </tbody>
        
</table>

          </div> 
        </div>
	</div>
</div>

  </body>
    </html>