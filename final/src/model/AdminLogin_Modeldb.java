package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.AdminLogin_bean;
import db.Db;

public class AdminLogin_Modeldb {
	
	public static int get_FIRST_NAME(AdminLogin_bean ob){
		
		ResultSet rs=null;
		int i=0;
		String fname=null;
		
		try {
			Connection con=null;		
			con=Db.Condb();
			
			String sql="Select USER_NAME,PASSWORD from admin_info where USER_NAME=? and PASSWORD=?";
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getUSER_NAME());
			ps.setString(2, ob.getPASSWORD());
			
			rs=ps.executeQuery();
			if(rs.next())
			{
				i=1;
			}
			else
			{
				i=0;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return i;
		
	}

}
