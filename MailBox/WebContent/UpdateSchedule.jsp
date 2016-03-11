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
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>  
<link rel="stylesheet" type="text/css" href="datetimepicker/jquery.datetimepicker.css"/>
  <style type="text/css">

.custom-date-style {
	background-color: red !important;
}

.input{	
}
.input-wide{
	width: 500px;
}

</style>
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
        statement.executeQuery("select * from schedulematch"); 
        %>
<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        
        <div class="table-responsive">

              
            
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   
                   <th>Team</th>
                    <th>Op Team</th>
                     <th>Date</th>
                     <th>Time</th>
                      <th>Location</th>
                      <th>Status</th>
                   </thead>
    <tbody>
   
    <% while(resultset.next()){ %>
     <tr>
    
    <form action="updateScheduleDb.jsp" method="GET">
    												
    <td><input type="text"  class="form-control" name="Team<%= resultset.getString(7) %>" value="<%= resultset.getString(1) %>"></td>
    <td><input type="text"  class="form-control" name="OpTeam<%= resultset.getString(7) %>" value="<%= resultset.getString(2) %>"></td>
    <td><input type="text"  class="form-control" name="date<%= resultset.getString(7) %>" value="<%= resultset.getString(3) %>"></td>
    <td><input type="text"  class="form-control" name="time<%= resultset.getString(7) %>" value="<%= resultset.getString(4) %>"></td>
    <td><input type="text"  class="form-control" name="location<%= resultset.getString(7) %>" value="<%= resultset.getString(5) %>"></td>
    <td><input type="text"  class="form-control" name="status<%= resultset.getString(7) %>" value="<%= resultset.getString(6) %>"></td>
    <input type="hidden" name="name of form" value="<%= resultset.getString(7) %>"/>
     <td><button type="submit" class="btn btn-primary" data-title="Edit" data-toggle="modal">Update</button></td>
       <td><button type="button" class="btn btn-danger" onclick="location.href='updateScheduleDb.jsp?key=<%= resultset.getString(7) %>';"  />Delete</button></td>
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