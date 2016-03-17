package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Retailer_returnbean;
import db.Db;

public class Retailer_returnModel {
public static ArrayList<Retailer_returnbean> showReturns(String name){
		
		Connection con=null;
		
		ArrayList<Retailer_returnbean> ar=new ArrayList<Retailer_returnbean>();
		
		try {
			con=Db.Condb();
			
			String sql="Select p.ORDER_DETAILS_ID,p.EMAIL,p.REASON,b.NAME,b.SUPPLIER_ID from returns p inner join order_cart b on p.ORDER_DETAILS_ID=b.ORDER_ID where b.SUPPLIER_ID=?";
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, name);
			ResultSet rs=ps.executeQuery();
			
			Retailer_returnbean ob=null;
			
			while(rs.next()){
				
				int ORDER_DETAILS_ID=rs.getInt("ORDER_DETAILS_ID");
				String EMAIL=rs.getString("EMAIL");
				String REASON=rs.getString("REASON");
				String NAME=rs.getString("NAME");
				String SUPPLIER_ID=rs.getString("SUPPLIER_ID");
			
				ob=new Retailer_returnbean(ORDER_DETAILS_ID,EMAIL,REASON,NAME,SUPPLIER_ID);
				ar.add(ob);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
			
		
		return ar;
		
		
	}

}

