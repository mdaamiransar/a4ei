package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.Db;
import bean.Category_bean;

public class Category_Modeldb {
	
	public static int insert(Category_bean ob)
	{
		int i=0;
		Connection con=null;
		con=Db.Condb();
		String sql="insert into category(CATEGORY_ID,CATEGORY_NAME,CATEGORY_DATE)values(?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,ob.getCATEGORY_ID());
			ps.setString(2,ob.getCATEGORY_NAME());
			ps.setString(3,ob.getCATEGORY_DATE());
			
			 return i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return i;
				
	}


}
