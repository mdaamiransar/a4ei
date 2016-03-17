package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.Db;
import bean.other_retailerbean;

public class other_retailermodel {
	public static ArrayList<other_retailerbean> show(String PRODUCT_NAME, String name) {
		Connection con=null;
		ArrayList<other_retailerbean> ar=new ArrayList<other_retailerbean>();
		try {
			
			other_retailerbean ob=null;
			con=Db.Condb();
			String sql="select PRODUCT_NAME,SUPPLIER_ID,SALES_PRICE from products where PRODUCT_NAME=? and SUPPLIER_ID!=?";

			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,PRODUCT_NAME);
			ps.setString(2,name);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
				
			{
				
			
				String PRODUCT_NAME1=rs.getString(1);
				String name2=rs.getString(2);
				Double SALES_PRICE=rs.getDouble(3);
				
				
			
			ob=new other_retailerbean(PRODUCT_NAME1,name2,SALES_PRICE);
			 ar.add(ob);
			}
			} catch (Exception e) {
				
				e.printStackTrace();
			}

			return ar;
		}

}