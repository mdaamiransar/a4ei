package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Order_Tracking;
import bean.Order_status_bean;
import db.Db;

public class Order_Status_modeldb {
	
	public static int insert(Order_status_bean ob){
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="Insert into order_status(ORDER_STATUS_NAME)values(?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			
			ps.setString(1, ob.getORDER_STATUS_NAME());
			
			return i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
		
	}


public static ArrayList<Order_Tracking>Track_OrderDetails(Order_Tracking ob){
	
	
	ArrayList<Order_Tracking>ab = new ArrayList<Order_Tracking>();
		
		try {
			Connection con=null;
			con=Db.Condb();
			String email=ob.getEmail();
			System.out.println("Email in model is"+email);
			int order=ob.getOrder_Id();
			System.out.println("Order id in model is"+order);
			
			String sql="Select a1.ORDER_STATUS_NAME from order_status a1  join order_details a2 on a1.ORDER_STATUS_ID=a2.ORDER_STATUS_ID and a2.email=? and a2.ORDER_DETAILS_ID=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,ob.getEmail() );
			ps.setInt(2, ob.getOrder_Id());
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
				String status_name=rs.getString(1);
				
				Order_Tracking obj=new Order_Tracking(status_name);
				
				ab.add(obj);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
				return ab;
		
	}
}
