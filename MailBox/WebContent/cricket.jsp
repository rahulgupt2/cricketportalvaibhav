<%@page import="com.dbconnect.DbConnect"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body background="images/cricket.jpg">

<div class="container" color="Red">
   <div class="well well-lg"><h2><font color=blue><marquee direction="left">Welcome to Sigma Cricket Portal<br>Enroll Yourself in Sigma Team</font></h2></marquee></div>
</div>
<div class="container">
  <h2><font ></font>My Portal</h2>
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" href="#collapse1"><font color="Red"> Click Here For More </font></a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse">
        <ul>
          <li><a href="ViewTeam.jsp">View Team</a></li>
          <li><a href="ViewResult.jsp">View Result</a></li>
          <li><a href="ViewSchedule.jsp">Scheduled Matches</a></li>
          <!-- Admin Login -->
          <li><a data-toggle="collapse" href="#collapse2">AdminLogin</a></li>
          <div id="collapse2" class="collapse"><li>
           
          <!-- form class="form-horizontal" role="form" method="post" -->
          <form class="form-horizontal" name="form" method="post" onsubmit="return validLogin();">
          <!-- form name="form" method="post" onsubmit="return validLogin();"-->
          <div class="form-group">
          <label class="col-sm-2 control-label">Username</label>
          <div class="col-sm-3">
          <input type="text" name="username" id="username" class="form-control"   placeholder="username" required>
          </div>
          </div>
          <div class="form-group">
          <label class="col-sm-2 control-label">Password</label>
          <div class="col-sm-3">
          <input type="password" name="pass" id="pass" class="form-control"   placeholder="password" required>
          </div>
          <%
          session.setAttribute("name", "vaibhav");
          %>
          <input type="submit" class="btn btn-primary" value="Login">
          
          </div>
          
          </form>
         
          </li>
        </div>
         </ul>   
      </div>
     
    </div>
  
          
                
       <div class="panel-footer">
       </div>
     </div>
    </div>


<div class="container">

  <h2><font style="italic" color="Pink">Enroll Here</font></h2>
  <form class="form-horizontal" method="POST" action="CricketMemberDb.jsp">
    <div class="form-group">
      <label class="control-label col-sm-2" for="emp_id"><font style="italic" color="Pink">Emp_id:</font></label>
      <div class="col-sm-3">
        <input type="text" name="emp_id" id="emp_id" class="form-control" placeholder="empid" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="name"><font style="italic" color="Pink">Name:</font></label>
      <div class="col-sm-3">          
        <input type="text" name="name" id="name" class="form-control" placeholder="name" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email"><font style="italic" color="Pink">Email:</font></label>
      <div class="col-sm-3">
        <input type="email" name="email" id="email" class="form-control" placeholder="email" required>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="phone"><font style="italic" color="Pink">Phone:</font></label>
      <div class="col-sm-3">    
          
        <input type="number" name="phone" id="phone" maxlength="10" class="form-control" placeholder="phone" required>
        
      </div>
    </div>
      <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </div>
  </form>
  </div>
  <script>
			function validLogin(){
			if (document.form.username.value == "vaibhav" && document.form.pass.value == "deore")
			{
				
			    window.location.href = "AdminLogin.jsp"
			    return false;
				
					
			}
			else{
				alert ( "Please enter correct username or password." );
				return false
			}
			}
			
			
		       $(document).ready(function () {
		           $('#phone').change(function () { 
		        	   if(document.getElementById("phone").value.length<10)
		        	   {
		        	   alert("Enter Valid Phone no");
		        	   indow.location.href = "AdminLogin.jsp"
		   			    return false;
		        	   
		        	   
		        	   }
		        	   
		        		   
		        	  });
		       });
		    
				
 </script>
  </body>
</html>

