package model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;


import bean.list_all_ordersbean;
import db.Db;

public class list_all_ordersmodel {

public static ArrayList<list_all_ordersbean> show(String name1) {
	System.out.println("name"+name1);
	Connection con=null;
	ArrayList<list_all_ordersbean> ar=new ArrayList<list_all_ordersbean>();
	try {
		
		
		con=Db.Condb();
		String sql="select o.ORDER_DETAILS_ID,o.ADDRESS,o.ORDER_AMOUNT,o.ORDER_DATE,o.PAYMENT_TYPE,e.ORDER_STATUS_NAME,o.SHIPPING_METHOD,o.ODER_DISCOUNTS,o.email,c.NAME,c.SUPPLIER_ID from order_details o  inner join order_status e on o.ORDER_STATUS_ID=e.ORDER_STATUS_ID  inner join order_cart c on o.ORDER_DETAILS_ID=c.ORDER_ID where c.SUPPLIER_ID=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,name1);
		ResultSet rs=ps.executeQuery();
		list_all_ordersbean ob=null;
		while(rs.next())
			
		{
			int ORDER_DETAILS_ID=rs.getInt(1);	
			String ADDRESS=rs.getString(2);
			String ORDER_AMOUNT=rs.getString(3);
			String ORDER_DATE=rs.getString(4);
			String PAYMENT_TYPE_ID=rs.getString(5);
			String ORDER_STATUS_ID=rs.getString(6);
			String SHIPPING_METHOD=rs.getString(7);
			String ODER_DISCOUNTS=rs.getString(8);
			String email=rs.getString(9);
			String NAME=rs.getString(10);
			String SUPPLIER_ID=rs.getString(11);
			
			
		
		ob=new list_all_ordersbean(ORDER_DETAILS_ID,ADDRESS,ORDER_AMOUNT,ORDER_DATE,PAYMENT_TYPE_ID,ORDER_STATUS_ID,SHIPPING_METHOD,ODER_DISCOUNTS,email,NAME,SUPPLIER_ID);
		 ar.add(ob);
		}
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		return ar;
	}
}