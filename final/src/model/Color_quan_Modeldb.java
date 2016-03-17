package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Color_Quantity_bean;
import db.Db;

public class Color_quan_Modeldb {

	public static int insert(Color_Quantity_bean ob) {
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
String sql="insert into color(PRODUCT_ID,COLOR,QUANTITY)values(?,?,?)";
		
        
try {
       PreparedStatement ps=con.prepareStatement(sql);
      
       ps.setInt(1,ob.getPRODUCT_ID());
        ps.setString(2,ob.getCOLOR());
        ps.setString(3,ob.getQUANTITY());
		
        i=ps.executeUpdate();
        
        
	} catch (SQLException e) {
		
		e.printStackTrace();
	}

String sql1="insert into color1(PRODUCT_ID,COLOR,QUANTITY)values(?,?,?)";


try {
       PreparedStatement ps1=con.prepareStatement(sql1);
      
       ps1.setInt(1,ob.getPRODUCT_ID());
        ps1.setString(2,ob.getCOLOR());
        ps1.setString(3,ob.getQUANTITY());
		
        i=ps1.executeUpdate();
} catch (SQLException e) {
	
	e.printStackTrace();
}
	return i;
	}
	

	/*public static boolean check_color(String color)
	{
		boolean s=false;
		try {
			Connection con=null;
			con=Db.Condb();
			String sql="select COLOR from color where COLOR=?";
			PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1,color);
            ResultSet rs=ps.executeQuery();
            s=rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
		
	}*/

	public static int update(Color_Quantity_bean ob) {
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="UPDATE color SET QUANTITY=? WHERE PRODUCT_ID=? and COLOR=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, ob.getQUANTITY());
			
			ps.setInt(2, ob.getPRODUCT_ID());
			ps.setString(3, ob.getCOLOR());
			
			i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		String sql1="UPDATE color1 SET QUANTITY=? WHERE PRODUCT_ID=? and COLOR=?";
		try {
			PreparedStatement ps1=con.prepareStatement(sql1);
			ps1.setString(1, ob.getQUANTITY());
			
			ps1.setInt(2, ob.getPRODUCT_ID());
			ps1.setString(3, ob.getCOLOR());
			
			i=ps1.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return i;
	}
}