<%@page import="javax.mail.Session"%>
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
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/jquery-1.9.1.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap-datepicker.js"></script>
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
<body background="images/Admin.jpg">
<%
//session.setAttribute("name", "vaibhav");
//out.print(session.getAttribute("name"));
//out.print( session.getId());
%>
<div class="container">
<div class="panel-group">
    <div class="panel panel-default">
  <h3>Welcome <%= session.getAttribute("name")%></h3>
  <ul class="nav nav-pills nav-stacked">
    <li class="active"><a href="MainPage.jsp">Home</a></li>
    <li><a href="EditTable.jsp">EditTeam</a></li>
    <li><a data-toggle="collapse" href="#collapse1">Add Schedule</a></li>
    <!-- Add Schedule Panel -->
    
       
      <div class="panel panel-default">
       <div id="collapse1" class="collapse"><li>
          <form class="form-horizontal" name="form" action="ScheduleMatchDb.jsp">
          <div class="container">                               
     
		  
          <div class="form-group">
          <label class="col-sm-2 control-label">Enter Ur Team Name</label>
          <div class="col-sm-3">
          <input type="text" name="TeamName" id="TeamName" class="form-control"   placeholder="TeamName" required>
          </div>
          </div>
          
          
          <div class="form-group">
          <label class="col-sm-2 control-label">Enter aponant Team Name</label>
          <div class="col-sm-3">
          <input type="text" name="OpTeamName" id="OpTeamName" class="form-control"   placeholder="TeamName" required>
          
          </div>
          </div>
          
          <div class="form-group">
          <label class="col-sm-2 control-label">Date</label>
          <div class="col-sm-3">
          <input type="text" id="datetimepicker2"   class="form-control"   placeholder="date" >
          </div>
          </div>
       
          
          <div class="form-group">
          <label class="col-sm-2 control-label">Time</label>
          <div class="col-sm-3">
          <input type="text" name="time" id="time" class="form-control"   placeholder="time" >
          </div>
          </div>
        
        <div class="form-group">
          <label class="col-sm-2 control-label">Location</label>
          <div class="col-sm-3">
          <input type="text" name="location" id="location" class="form-control"   placeholder="location">
          </div>
          </div>
        
        <div class="form-group">
          <label class="col-sm-2 control-label">Status</label>
          <div class="col-sm-3">
          <input type="text" name="status" id="status" class="form-control"   placeholder="Status">
          </div>
           <input type="submit" class="btn btn-primary" value="submit">
          </div>
        
          
         
        </form>
       </div>
       </div>
       </div>
    <li><a href="UpdateSchedule.jsp">Update Schedule</a></li>
    <li><a data-toggle="collapse" href="#collapse2">Update Result</a></li>
    <div class="panel-group">
    <div class="panel panel-default">
    <div id="collapse2" class="collapse"><li>
    <form class="form-horizontal" name="form" action="UpdateResult.jsp">
          
          <div class="form-group">
          <label class="col-sm-2 control-label">Date of Match</label>
          <div class="col-sm-3">
          <input type="text" id="datetimepicker2"   class="form-control"   placeholder="date" >
          </div>
          </div>
          
          
          <div class="form-group">
          <label class="col-sm-2 control-label">Enter Name of Winning Team</label>
          <div class="col-sm-3">
          <input type="text" name="status" id="" class="form-control"   placeholder="Status" required>
          
          </div>
          <input type="submit" class="btn btn-primary" value="submit">
          </div>
          
           
         
         
         </form>
       </div>
       </div>
       </div>
       
        <li><a href="SendMail.jsp">SendMail</a></li>
        <li><a href="cricket.jsp">Logout</a></li>
        
  </ul>
</div>
</div>


<script src="datetimepicker/jquery.js"></script>
<script src="datetimepicker/build/jquery.datetimepicker.full.js"></script>
<script>

$('#datetimepicker2').datetimepicker({
	
	timepicker:false,
	format:'d/m/Y',
	formatDate:'Y/m/d',
	
});
</script>
       
</body>
</html>