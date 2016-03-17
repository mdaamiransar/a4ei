package db;

import java.sql.Connection;
import java.sql.DriverManager;

public class Db {
	static String Driver="com.mysql.jdbc.Driver";
	static String url="jdbc:mysql://localhost/Shopping";
	static String username="root";
	static String password="root";
    

	public static Connection Condb()
    {
    	Connection con=null;
    	
			try {
				Class.forName(Driver);
				con=DriverManager.getConnection(url,username,password);
			} catch (Exception e) {
				e.printStackTrace();
			
			}
		
		
		
		return con;
    	
    }
}
