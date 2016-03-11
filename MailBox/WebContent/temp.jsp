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
<body>

<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        
        <div class="table-responsive">

              
            
              <table id="mytable" class="table table-bordred table-striped">
              
              <thead>
                   
                   
                   <th>HOBY</th>
                    <th>Activity</th>
                    
                    <tbody>
                    


<tr>

  
  <form class="form-horizontal" method="POST" action="CricketMemberDb.jsp">
   <td><input type="text"  class="form-control" name="pid" value=""></td>
   <td><input type="text"  class="form-control" name="pid" value=""></td>
   <td><button type="submit" class="btn btn-primary" data-title="Edit" data-toggle="modal">Update</button></td>
   <br><br><button type="button" class="btn btn-success" id="table" onclick="myFunction()"/>Add</button><td>
    </form>
    </tr>
 
   </tbody>
        
</table>
<script type="text/javascript">

function myFunction() {
	if(document.getElementById("table"))
		{
    var counter;
    var table = document.getElementById("mytable");
    var row = table.insertRow(0);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
    counter++;
    cell1.innerHTML ="<input type='text'  class='form-control' name='pid' value='name'>";
    cell2.innerHTML ="<input type='text'  class='form-control' name='pid' value='name'>";
    cell3.innerHTML ="<button type='submit' class='btn btn-primary'>Update</button>";
	cell4.innerHTML	="<button type='button' class='btn btn-danger' id='pid' onclick='deleteRow()'/>Delete</button>";

		}
}
function deleteRow() {
	//var table = document.getElementById("mytable").removeChild(document.getElementById("pid"));
	    window.location.href = "AdminLogin.jsp"
	    return false;
}
			
	

  </script>
  
  </div>

</body>
</html>