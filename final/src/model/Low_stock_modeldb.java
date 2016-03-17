package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Low_stock_bean;
import db.Db;

public class Low_stock_modeldb {
public static ArrayList<Low_stock_bean> showStock(){
		
		Connection con=null;
		
		ArrayList<Low_stock_bean> ar=new ArrayList<Low_stock_bean>();
		
		try {
			con=Db.Condb();
			
			String sql="Select p.PRODUCT_NAME,p.SUPPLIER_ID,c.COLOR,c.QUANTITY from products p inner join color c on p.PRODUCT_ID=c.PRODUCT_ID where QUANTITY<=?";
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, 5);
			ResultSet rs=ps.executeQuery();
			
			Low_stock_bean ob=null;
			
			while(rs.next()){
				
				
				String PRODUCT_NAME=rs.getString("PRODUCT_NAME");
				String SUPPLIER_ID=rs.getString("SUPPLIER_ID");
				String COLOR=rs.getString("COLOR");
				int QUANTITY=rs.getInt("QUANTITY");
				
				ob=new Low_stock_bean(PRODUCT_NAME, SUPPLIER_ID, COLOR, QUANTITY);
				ar.add(ob);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		return ar;
		
		
	}


}
