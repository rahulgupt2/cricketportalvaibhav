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
<div class="col-md-12">
<button type="button" class="btn btn-primary" onclick="location.href='AdminLogin.jsp';">Home</button>
        
        </div>
<%


if(request.getParameter("name of form")!=null)
{
//out.print(request.getParameter("name of form"));
String formId=request.getParameter("name of form");
//out.print(request.getParameter("pid"+formId));


//out.print(request.getParameter("name"+formId));

//out.print(request.getParameter("email"+formId));

//out.print(request.getParameter("contact"+formId));
Connection connection=null;
try
{
	 DbConnect dbcon=new DbConnect();
	 connection=dbcon.getConnection();
	 if(connection==null)
	 {
		 out.print("Database Error");
	 }
	 
     String id=request.getParameter("name of form");
	 PreparedStatement ps=connection.prepareStatement("UPDATE player SET P_id=?,email=?, P_name=?, phone=? where id=?");
	 ps.setString (5, request.getParameter("name of form"));
	 ps.setString (1, request.getParameter("pid"+formId));
	 ps.setString (2, request.getParameter("email"+formId));
	 ps.setString (3, request.getParameter("name"+formId));
	 ps.setString (4, request.getParameter("contact"+formId));
	 ps.executeUpdate();
}
	 catch(SQLException e)
	 {
		 e.printStackTrace();
	 }

}else if(request.getParameter("key")!=null)
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
	     String id=request.getParameter("key");
		 PreparedStatement ps=connection.prepareStatement("delete from player where id=?");
		 ps.setString(1, id);
		 
		 ps.executeUpdate();
	}
		 catch(SQLException e)
		 {
			 e.printStackTrace();
		 }
}
        response.sendRedirect("EditTable.jsp");








%>

            

</body>
</html>