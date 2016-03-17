package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.CustomerLogin_bean;
import db.Db;

public class CustomerLogin_Modeldb {
	
public static boolean get_FIRST_NAME(CustomerLogin_bean ob){
		
		ResultSet rs=null;
		boolean b=false;
		String fname=null;
		
		try {
			Connection con=null;
			con=Db.Condb();
			
			String sql="Select USER_NAME,PASSWORD from customer_info where"+
			"USER_NAME=? and PASSWORD=?";
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getUSER_NAME());
			ps.setString(2, ob.getPASSWORD());
			
			rs=ps.executeQuery();
			b=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return b;
    }

}
