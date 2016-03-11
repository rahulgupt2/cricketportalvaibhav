<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.dbconnect.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
 <H1>Fetching Data From a Database</H1>
        <%
        Connection con;
        DbConnect dbcon=new DbConnect();
        con=dbcon.getConnection();
        Statement statement = con.createStatement() ;
        ResultSet resultset = 
        statement.executeQuery("select * from player"); 
        %>
       <table class="table">
       <thead>
            <TR>
                <th>PlayerId</th>
        		<th>PlayerName</th>
        		<th>PlayerEmail</th>
        		<th>Phone</th>
                <TH>Edit</TH>
                <TH>Delete</TH>
 
            </TR>
          </thead>  
 	<tbody>
 
                                      
        
 
            <% while(resultset.next()){ %>
            <TR class="success">
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
            
                <TD><input type="button" name="edit" value="Edit" onClick="javascript:window.location='EditCricketPlayer.jsp';" style="background-color:#49743D;font-weight:bold;color:#ffffff;">
 
                </TD>
                <TD><input type="button" name="delete" value="Delete" onClick="javascript:window.location='deleteData.jsp';"style="background-color:#ff0000;font-weight:bold;color:#ffffff;"></TD>
            </TR>
          
                                   
 
             <% } %>
 
	</tbody>
</table>
        
       
</body>
</html>