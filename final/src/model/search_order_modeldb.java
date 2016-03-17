
package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import bean.search_order_bean;
import db.Db;

public class search_order_modeldb {


public static ArrayList<search_order_bean> showorder(String from,String to)	{
	Connection con=null;
	con=Db.Condb();
ArrayList<search_order_bean> ar=new ArrayList<search_order_bean>();

try {
	search_order_bean ob=null;
	
	con=Db.Condb();
	String sql="select o.ORDER_DETAILS_ID,o.ADDRESS,o.ORDER_AMOUNT,o.ORDER_DATE,o.PAYMENT_TYPE,e.ORDER_STATUS_NAME,o.SHIPPING_METHOD,o.ODER_DISCOUNTS,o.email,c.NAME,c.SUPPLIER_ID from order_details o  inner join order_status e on o.ORDER_STATUS_ID=e.ORDER_STATUS_ID  inner join order_cart c on o.ORDER_DETAILS_ID=c.ORDER_ID where o.ORDER_DATE between ? and ?";
			
	PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,from);
  ps.setString(2,to);
	ResultSet rs=ps.executeQuery();
	

	while(rs.next())
	{
		String oRDER_DETAILS_ID=rs.getString(1);
		String aDDRESS=rs.getString(2);
		String oRDER_AMOUNT=rs.getString(3);
		String oRDER_DATE=rs.getString(4);
	    String pAYMENT_TYPE=rs.getString(5);
	    String oRDER_STATUS_ID=rs.getString(6);
	    String sHIPPING_METHOD=rs.getString(7);
	    String oDER_DISCOUNTS=rs.getString(8);
	    String email=rs.getString(9);
	    String name=rs.getString(10);
	    String supplier_id=rs.getString(11);
	    
		ob=new search_order_bean(oRDER_DETAILS_ID, aDDRESS, oRDER_AMOUNT, oRDER_DATE, pAYMENT_TYPE, oRDER_STATUS_ID, sHIPPING_METHOD, oDER_DISCOUNTS, email,name,supplier_id);
		ar.add(ob);
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

return ar;	
}



public static ArrayList<search_order_bean> showorderdetails()	{
	Connection con=null;
	con=Db.Condb();
ArrayList<search_order_bean> ar=new ArrayList<search_order_bean>();


try {
	search_order_bean ob=null;
	con=Db.Condb();
	String sql="select o.ORDER_DETAILS_ID,o.ADDRESS,o.ORDER_AMOUNT,o.ORDER_DATE,o.PAYMENT_TYPE,e.ORDER_STATUS_NAME,o.SHIPPING_METHOD,o.ODER_DISCOUNTS,o.email,c.NAME,c.SUPPLIER_ID from order_details o  inner join order_status e on o.ORDER_STATUS_ID=e.ORDER_STATUS_ID  inner join order_cart c on o.ORDER_DETAILS_ID=c.ORDER_ID";
			
	PreparedStatement ps=con.prepareStatement(sql);
    
	ResultSet rs=ps.executeQuery();
	

	while(rs.next())
	{
		String oRDER_DETAILS_ID=rs.getString(1);
		String aDDRESS=rs.getString(2);
		String oRDER_AMOUNT=rs.getString(3);
		String oRDER_DATE=rs.getString(4);
	    String  pAYMENT_TYPE_ID=rs.getString(5);
	    String oRDER_STATUS_ID=rs.getString(6);
	    String sHIPPING_METHOD=rs.getString(7);
	    String oDER_DISCOUNTS=rs.getString(8);
	    String email=rs.getString(9);
	    String name=rs.getString(10);
	    String supplier_id=rs.getString(11);
	    
		ob=new search_order_bean(oRDER_DETAILS_ID, aDDRESS, oRDER_AMOUNT, oRDER_DATE, pAYMENT_TYPE_ID, oRDER_STATUS_ID, sHIPPING_METHOD, oDER_DISCOUNTS, email,name,supplier_id);
		ar.add(ob);
	}
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

return ar;	
}
	
}

