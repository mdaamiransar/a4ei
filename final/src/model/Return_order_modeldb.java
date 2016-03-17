package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Return_order_bean;
import db.Db;

public class Return_order_modeldb {
	
	public static ArrayList<Return_order_bean> showReturns(){
		
		Connection con=null;
		
		ArrayList<Return_order_bean> ar=new ArrayList<Return_order_bean>();
		
		try {
			con=Db.Condb();
			
			String sql="Select p.ORDER_ID,p.NAME,p.SUPPLIER_ID,r.REASON,r.EMAIL from order_cart p inner join returns r on p.ORDER_ID=r.ORDER_DETAILS_ID";
			
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			Return_order_bean ob=null;
			
			while(rs.next()){
				
				int ORDER_ID=rs.getInt("ORDER_ID");
				String NAME=rs.getString("NAME");
				String SUPPLIER_ID=rs.getString("SUPPLIER_ID");
				String REASON=rs.getString("REASON");
				String EMAIL=rs.getString("EMAIL");
				
				ob=new Return_order_bean(ORDER_ID, NAME, SUPPLIER_ID, REASON, EMAIL);
				ar.add(ob);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		return ar;
		
		
	}

}
