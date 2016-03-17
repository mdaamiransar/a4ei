package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.Color_Quantity_bean;
import db.Db;

public class Color_Modeldb {
	
	public static int insert(Color_Quantity_bean ob)
	{
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="insert into color_quantity(PRODUCT_ID,COLOR,QUANTITY)values(?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setInt(1, ob.getPRODUCT_ID());
			ps.setString(2, ob.getCOLOR());
			ps.setString(3, ob.getQUANTITY());
			
			return i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
		
	}

}
