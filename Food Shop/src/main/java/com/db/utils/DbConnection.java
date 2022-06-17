package com.db.utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	/* 
	 final static String DB_NAME = "Food_port_db";
	 final static String Connection_URL = "jdbc:mysql://localhost:3307/" + DB_NAME;
	 final static String USERNAME = "root";
	 final static String PASSWORD = "admin";
	 */
 public static Connection init() {
	 Connection con=null;
	 
		 try{  
			 Class.forName("com.mysql.jdbc.Driver");  
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Food_port_db","root","admin");  
	 }
		 catch(ClassNotFoundException | SQLException e) {
			 e.printStackTrace();
		 }
		 return con;
 }
}
