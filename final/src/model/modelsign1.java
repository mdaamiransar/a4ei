package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.Db;
import bean.login_Bean1;

public class modelsign1 {
	public static int get_First_name(login_Bean1 ob)
	{
		ResultSet rs=null;
		int i=0;
		String fname=null;
		try {
			Connection con=null;
			
			con=Db.Condb();
			String sql="select a.COMPANY_NAME,b.CREATE_PASSWORD from retailer_information a inner join retailer_registration b on a.REGISTRATION_ID=b.REGISTRATION_ID where a.COMPANY_NAME=? and b.CREATE_PASSWORD=?";	
			
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,ob.getCOMPANY_NAME());
			ps.setString(2,ob.getCREATE_PASSWORD());

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
