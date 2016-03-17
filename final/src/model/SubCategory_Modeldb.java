package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.Db;
import bean.SubCategory_bean;

public class SubCategory_Modeldb {

public static int insert(SubCategory_bean ob){
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
	String sql="insert into subcategory(SUBCATEGORY_ID,SUBCATEGORY_NAME,CATEGORY_ID,SUBCATEGORY_DATE)values(?,?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,ob.getSUBCATEGORY_ID());
			ps.setString(2,ob.getSUBCATEGORY_NAME());
			ps.setString(3,ob.getCATEGORY_ID());
			ps.setString(4,ob.getSUBCATEGORY_DATE());
			 return i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return i;
				
	}


}
