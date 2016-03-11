package com.dbconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {
	
	Connection con=null;

	public Connection getConnection() throws SQLException, ClassNotFoundException
	{
		
		
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Game","root","user123");
		if(con==null)
		{
			System.out.println("Connection failed");
		}
		return con;
		
	}
		
}


