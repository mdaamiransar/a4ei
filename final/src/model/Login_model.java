package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import bean.Login_bean;

import db.*;

public class Login_model {
	public static int login_verify(Login_bean ob){
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		 try
			{
			   String EMAIL=ob.getUsermail();
			   String PASSWORD=ob.getPassword();
			
				String sql="select EMAIL & PASSWORD from customer_info where EMAIL=? and PASSWORD=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, EMAIL);
				ps.setString(2, PASSWORD);
				
				ResultSet rs=ps.executeQuery();
				if(rs.next())
				{
					i=1;
				}
				
			}
			catch(Exception e)
			{
	
	}
		return i;


	
	
	}
}
