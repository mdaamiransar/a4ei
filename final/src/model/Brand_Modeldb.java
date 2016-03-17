package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.Db;
import bean.Brand_bean;

public class Brand_Modeldb {

public static int insert(Brand_bean ob) {
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		String sql="insert into brand(CATEGORY_ID,SUBCATEGORY_ID,BRAND_ID,BRAND_NAME)values(?,?,?,?)";
	      
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, ob.getCATEGORY_ID());
			
			ps.setString(2,ob.getSUBCATEGORY_ID());
			ps.setString(3,ob.getBRAND_ID());
			ps.setString(4,ob.getBRAND_NAME());
			
			return i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return i;
	}

}