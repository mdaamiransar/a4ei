package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.complete_order_bean;
import db.Db;

public class complete_order_modeldb {
	public static ArrayList<complete_order_bean> completeorderdetails()	{
		Connection con=null;
		con=Db.Condb();
	ArrayList<complete_order_bean> ar=new ArrayList<complete_order_bean>();


	try {
		complete_order_bean ob=null;
		con=Db.Condb();
		String sql="select o.ORDER_DETAILS_ID,o.ADDRESS,o.ORDER_AMOUNT,o.ORDER_DATE,o.PAYMENT_TYPE,e.ORDER_STATUS_NAME,o.email,c.NAME,c.SUPPLIER_ID from order_details o  inner join order_status e on o.ORDER_STATUS_ID=e.ORDER_STATUS_ID  inner join order_cart c on o.ORDER_DETAILS_ID=c.ORDER_ID where e.ORDER_STATUS_NAME=?";
				
		PreparedStatement ps=con.prepareStatement(sql);
	    ps.setString(1, "delivered");
		ResultSet rs=ps.executeQuery();
		

		while(rs.next())
		{
			String oRDER_DETAILS_ID=rs.getString(1);
			String aDDRESS=rs.getString(2);
			String oRDER_AMOUNT=rs.getString(3);
			String oRDER_DATE=rs.getString(4);
		    String  pAYMENT_TYPE_ID=rs.getString(5);
		    String oRDER_STATUS_ID=rs.getString(6);
		    
		    String email=rs.getString(7);
		    String name=rs.getString(8);
		    String supplier_id=rs.getString(9);
		    
			ob=new complete_order_bean(oRDER_DETAILS_ID, aDDRESS, oRDER_AMOUNT, oRDER_DATE, pAYMENT_TYPE_ID, oRDER_STATUS_ID, email, name, supplier_id);
			ar.add(ob);
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return ar;	
	}
		

}
