<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
    <%@ page import="com.dbconnect.*" %>
    <%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.PasswordAuthentication" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body background="images/black.jpg">
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
        String P_ids="";
        while(resultset.next())
        {
        	P_ids=resultset.getString(3)+','+P_ids;
        }
        //request.setAttribute("ids",P_ids);
        //out.print("Emails="+P_ids);
        
        //mail sending logic
        
        
     %>
<div class="container">
  <h2><font style="italic" color="Pink">Send Mail</font></h2>
  <form  method="post" action="sendemail.jsp">
    
      <label for="To"><font style="italic" color="Cyan">TO:</font></label>
      <input type="text" class="form-control" name="email" value=<%=P_ids%>>
     
      <label for="Cc"><font style="italic" color="Cyan">CC:</font></label>
      <input type="text" class="form-control" name="cc">
 
      <label for="Subject"><font style="italic" color="Cyan">Subject</font></label>
      <input type="text" class="form-control" name="subject">
  
  <br>
  <div class="form-group">
  <label for="comment"><font style="italic" color="Cyan">Text</font></label>
  <textarea class="form-control" cols="10" rows="10" name="text"></textarea>
</div>
   
    <button type="submit" class="btn btn-Success">Send</button>
  </form>
</div>

</body>
</html>
