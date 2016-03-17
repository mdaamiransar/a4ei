package cart;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;

import bean.Personal_Info_bean;
import bean.Product_bean;
import bean.Return_bean;
import bean.address_bean;

import bean.deactivate_bean;
import bean.feedback_bean;
import bean.update_account_bean;
import bean.update_change_password_bean;

import java.sql.Connection;

import db.*;

public class Dao_Cart {


public static boolean Product_id_Customer(int product_id,String email)
{
	Connection con=Db.Condb();
	boolean status=false;
	String sql="Select Product_id from Registered_Cart where Email=? and Product_id=?";
	try {
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ps.setInt(2,product_id);
		ResultSet rs=ps.executeQuery();
		status=rs.next();
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
	
	
	return status;
	
}
public static int Insert_cart(Shopping_Cart bn)
{

	Connection con=Db.Condb();
	
	String sql="insert into registered_cart(PRODUCT_ID, PRODUCT_NAME, SHORT_DES, SELLER, DELIVERY_DATE, UNIT_PRICE, QUANTITY, TOTAL_PRICE, SHIPPING_CHARGE, SUB_TOTAL, email)"+
	"values(?,?,?,?,?,?,?,?,?,?,?)";
	
		int i=0;
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,bn.getProduct_id());
			ps.setString(2,bn.getProduct_name());
			ps.setString(3,bn.getShort_description());
			ps.setString(4,bn.getSeller());
			ps.setString(5,bn.getDelivery_date());
			ps.setDouble(6,bn.getPrice());
			ps.setDouble(7,bn.getQuantity());
			ps.setDouble(8,bn.getTotal_price());
			ps.setDouble(9,bn.getShipping_charge());
			ps.setDouble(10,bn.getSubtotal());
			ps.setString(11,bn.getEmail());

			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	return i;
	
}







public static ArrayList<Shopping_Cart> View_Cart(String email)
{
	ArrayList<Shopping_Cart> ar=new ArrayList<Shopping_Cart>();
	
	try {
		Connection con=Db.Condb();
		String sql="select r.PRODUCT_ID,r.PRODUCT_NAME,r.SHORT_DES,r.SELLER,r.DELIVERY_DATE,r.UNIT_PRICE,r.QUANTITY,r.TOTAL_PRICE,r.SHIPPING_CHARGE,r.SUB_TOTAL,c.COLOR_ID from registered_cart r inner join color c on c.PRODUCT_ID=r.PRODUCT_ID where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
			 
			 int product_id=rs.getInt("PRODUCT_ID");
			 String product_name=rs.getString("PRODUCT_NAME");
			 String SHORT_DES=rs.getString("SHORT_DES");
			 String SELLER=rs.getString("SELLER");
			 String DELIVERY_DATE=rs.getString("DELIVERY_DATE");
			 double UNIT_PRICE=rs.getDouble("UNIT_PRICE");
			 int QUANTITY=rs.getInt("QUANTITY");
			 double TOTAL_PRICE=rs.getDouble("TOTAL_PRICE");
			 double SHIPPING_CHARGE=rs.getDouble("SHIPPING_CHARGE");
			 double SUB_TOTAL=rs.getDouble("SUB_TOTAL");
			 int COLOR_ID=rs.getInt("COLOR_ID");
			 Shopping_Cart bn=new Shopping_Cart(product_id, SHORT_DES, SELLER, SHIPPING_CHARGE, DELIVERY_DATE, UNIT_PRICE, TOTAL_PRICE, product_name, QUANTITY, SUB_TOTAL, email, COLOR_ID);
			 ar.add(bn);
		 }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return ar;
	
}

public static Shopping_Cart View_buy_product_id(String email,int product_id)
{
	//ArrayList<Shopping_Cart> ar=new ArrayList<Shopping_Cart>();
	Shopping_Cart bn=null;
	try {
		Connection con=Db.Condb();
		String sql="select * from registered_buy where email=? and PRODUCT_ID=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ps.setInt(2,product_id);
		ResultSet rs=ps.executeQuery();
		
		 if(rs.next())
		 {
			 
			// int product_id=rs.getInt("PRODUCT_ID");
			 String product_name=rs.getString("PRODUCT_NAME");
			 String SHORT_DES=rs.getString("SHORT_DES");
			 String SELLER=rs.getString("SELLER");
			 String DELIVERY_DATE=rs.getString("DELIVERY_DATE");
			 double UNIT_PRICE=rs.getDouble("UNIT_PRICE");
			 int QUANTITY=rs.getInt("QUANTITY");
			 double TOTAL_PRICE=rs.getDouble("TOTAL_PRICE");
			 double SHIPPING_CHARGE=rs.getDouble("SHIPPING_CHARGE");
			 double SUB_TOTAL=rs.getDouble("SUB_TOTAL");
			
			 bn=new Shopping_Cart(product_id, SHORT_DES, SELLER, SHIPPING_CHARGE, DELIVERY_DATE, UNIT_PRICE, product_name, TOTAL_PRICE, QUANTITY, SUB_TOTAL, email);
			
		 }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return bn;
	
}
public static int Total_item_Cart(String email)
{
	
	int count=0;
	try {
		
		Connection con=Db.Condb();
		String sql="select count(*) from registered_cart where email=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		 {
			 
			 count=rs.getInt(1);
			
		 }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return count;
	
}



public static int Update_Quantity_TotalPrice(Shopping_Cart obj)
{
	
	Connection con = null;
	PreparedStatement ps = null;
	int i = 0;
	try {
		
		
		con = Db.Condb();

		String sql = "update registered_cart set TOTAL_PRICE=?, QUANTITY=? where PRODUCT_ID=? and email=?";
				;
		ps = con.prepareStatement(sql);

		ps.setDouble(1,obj.getTotal_price());
		ps.setDouble(2,obj.getQuantity());
		ps.setInt(3,obj.getProduct_id());
		ps.setString(4,obj.getEmail());

		i = ps.executeUpdate();
		System.out.println("iiii "+i);

	}

	catch (Exception e) {
		e.printStackTrace();
	}
	return i;
	
}
public static int Update_Quantity_TotalPrice_buy(Shopping_Cart obj)
{
	
	Connection con = null;
	PreparedStatement ps = null;
	int i = 0;
	try {
		
		
		con =Db.Condb();

		String sql = "update registered_buy set TOTAL_PRICE=?, QUANTITY=? where PRODUCT_ID=? and email=?";
				;
		ps = con.prepareStatement(sql);

		ps.setDouble(1,obj.getTotal_price());
		ps.setDouble(2,obj.getQuantity());
		ps.setInt(3,obj.getProduct_id());
		ps.setString(4,obj.getEmail());

		i = ps.executeUpdate();
		System.out.println("iiii "+i);

	}

	catch (Exception e) {
		e.printStackTrace();
	}
	return i;
	
}
public static double Selct_TotalPrice(String email,int product_id)
{
	 double TOTAL_PRICE=0;
	try {
		Connection con=Db.Condb();
		String sql="select TOTAL_PRICE from registered_cart where email=? and PRODUCT_ID=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ps.setInt(2,product_id);
	
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		 { 
			  TOTAL_PRICE=rs.getDouble("TOTAL_PRICE");
		 }
			
		 
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return TOTAL_PRICE;
	
}
public static double Selct_TotalPrice_buy(String email,int product_id)
{
	 double TOTAL_PRICE=0;
	try {
		Connection con=Db.Condb();
		String sql="select TOTAL_PRICE from registered_buy where email=? and PRODUCT_ID=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ps.setInt(2,product_id);
	
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		 { 
			  TOTAL_PRICE=rs.getDouble("TOTAL_PRICE");
		 }
			
		 
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return TOTAL_PRICE;
	
}
public static double Selct_SUBTotalPrice_buy(String email,int product_id)
{
	 double SUB_TOTAL=0;
	try {
		Connection con=Db.Condb();
		String sql="select SUB_TOTAL from registered_buy where email=? and PRODUCT_ID=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		ps.setInt(2,product_id);
	
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		 { 
			SUB_TOTAL=rs.getDouble("SUB_TOTAL");
		 }
			
		 
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return SUB_TOTAL;
	
}
public static int Update_Sub_TotalPrice(String email,int product_id,double subtotal)
{
	
	Connection con = null;
	PreparedStatement ps = null;
	int i = 0;
	try {
		
		
		con = Db.Condb();

		String sql = "update registered_cart set SUB_TOTAL=? where PRODUCT_ID=? and email=?";
			
		ps = con.prepareStatement(sql);

		ps.setDouble(1,subtotal);
		ps.setInt(2,product_id);
		ps.setString(3,email);

		i = ps.executeUpdate();
		

	}

	catch (Exception e) {
		e.printStackTrace();
	}
	return i;
	
}
public static int Update_Sub_TotalPrice_buy(String email,int product_id,double subtotal)
{
	
	Connection con = null;
	PreparedStatement ps = null;
	int i = 0;
	try {
		
		
		con = Db.Condb();

		String sql = "update registered_buy set SUB_TOTAL=? where PRODUCT_ID=? and email=?";
			
		ps = con.prepareStatement(sql);

		ps.setDouble(1,subtotal);
		ps.setInt(2,product_id);
		ps.setString(3,email);

		i = ps.executeUpdate();
		

	}

	catch (Exception e) {
		e.printStackTrace();
	}
	return i;
	
}
public static double getOrder_Total_ByEmail(String email)
{
	Connection con = null;
	PreparedStatement ps = null;
	double order_total= 0;
	try {

		con = Db.Condb();
		String sql="select SUB_TOTAL from registered_cart where email=?";
		
			ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
			order_total=order_total+rs.getDouble(1);
			
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	return order_total;
   }
public static String getAddress(String email)
{
	String address = null;

	  try {
		Connection con = Db.Condb();
		String sql1="select ADDRESS from customer_info where EMAIL=?";
		PreparedStatement ps=con.prepareStatement(sql1);
		ps.setString(1,email);
		  ResultSet rs=ps.executeQuery();
		   if(rs.next())
			   {
			   address=rs.getString(1);
			   }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return address;
}





public static void insert_cart(ArrayList<Shopping_Cart> arr1,String email)
{
	try {
		for(Shopping_Cart s:arr1)
	{
		int product_id=s.getProduct_id();
		String product_name=s.getProduct_name();
		String short_des=s.getShort_description();
		String seller=s.getSeller();
		String delivary_date=s.getDelivery_date();
		double unit_price=s.getPrice();
		int quantity=s.getQuantity();
		double total_price=s.getTotal_price();
		double shipping_charge=s.getShipping_charge();
		double Subtotal=s.getSubtotal();
		
		Connection con=Db.Condb();
		boolean b=Check_cart_duplicate(product_id, email);
		if(b==false)
		{
		String sql="insert into registered_cart(PRODUCT_ID, PRODUCT_NAME, SHORT_DES, SELLER, DELIVERY_DATE, UNIT_PRICE, QUANTITY, TOTAL_PRICE, SHIPPING_CHARGE, SUB_TOTAL, email)"+
		"values(?,?,?,?,?,?,?,?,?,?,?)";
		
			int i=0;
			
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setInt(1,product_id);
				ps.setString(2,product_name);
				ps.setString(3,short_des);
				ps.setString(4,seller);
				ps.setString(5,delivary_date);
				ps.setDouble(6,unit_price);
				ps.setDouble(7,quantity);
				ps.setDouble(8,total_price);
				ps.setDouble(9,shipping_charge);
				ps.setDouble(10,Subtotal);
				ps.setString(11,email);

				i = ps.executeUpdate();
			} 
		}
	}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
	}

	
	
	public static boolean  Check_cart_duplicate(int product_id,String email)
	{
		
			boolean b=false;
		try{	Connection con=Db.Condb();
			   
			
			String sql="select PRODUCT_ID from registered_cart where email=? and PRODUCT_ID=?";
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setInt(2,product_id);
			ResultSet rs=ps.executeQuery();
			b=rs.next();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
			return b;
			
		}
	public static void select_buy(int product_id,String email) {
		
		try {
			Connection con=Db.Condb();
			String sql="select * from products where PRODUCT_ID=?";
			PreparedStatement ps=con.prepareStatement(sql);
		
			ps.setInt(1,product_id);
			ResultSet rs=ps.executeQuery();
			int i=0;
			 if(rs.next())
			 {
				 System.out.println("ccc");
				// int product_id=rs.getInt("PRODUCT_ID");
				 String product_name=rs.getString("PRODUCT_NAME");
				 String SHORT_DES=rs.getString("SHORT_DESCRIPTION");
				 String SELLER=rs.getString("SUPPLIER_ID");
				
				 double UNIT_PRICE=rs.getDouble("MSRP");
                 double TOTAL_PRICE=UNIT_PRICE;
				 double SHIPPING_CHARGE=rs.getDouble("SHIPPING_COST");
				 int quantity=1;
				 double subtotal=SHIPPING_CHARGE+TOTAL_PRICE;
				
				 Shopping_Cart bn=new Shopping_Cart(product_id, SHORT_DES, SELLER, SHIPPING_CHARGE, UNIT_PRICE, TOTAL_PRICE, product_name, quantity, subtotal);
				i=Insert_buy(bn,email);
				System.out.println("i "+i);
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	public static int Insert_buy(Shopping_Cart bn,String email)
	{
		Calendar now = Calendar.getInstance();
	    String Currentdate = (now.get(Calendar.DATE) + 1) + "-"
	            + now.get(Calendar.MONTH) + "-" + now.get(Calendar.YEAR);


	// add days to current date using Calendar.add method
	now.add(Calendar.DATE, 7);

	String  dateaftersevenday =now.get(Calendar.DATE) + "-"
	+( now.get(Calendar.MONTH)+ 1) + "-" + now.get(Calendar.YEAR);

		Connection con=Db.Condb();
		
		String sql="insert into registered_buy(PRODUCT_ID, PRODUCT_NAME, SHORT_DES, SELLER, DELIVERY_DATE, UNIT_PRICE, QUANTITY, TOTAL_PRICE, SHIPPING_CHARGE, SUB_TOTAL, email)"+
		"values(?,?,?,?,?,?,?,?,?,?,?)";
		
			int i=0;
			try {
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setInt(1,bn.getProduct_id());
				ps.setString(2,bn.getProduct_name());
				ps.setString(3,bn.getShort_description());
				ps.setString(4,bn.getSeller());
				ps.setString(5,dateaftersevenday );
				ps.setDouble(6,bn.getPrice());
				ps.setDouble(7,bn.getQuantity());
				ps.setDouble(8,bn.getTotal_price());
				ps.setDouble(9,bn.getShipping_charge());
				ps.setDouble(10,bn.getSubtotal());
				ps.setString(11,email);

				i = ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return i;
	}
	
	public static int Update_information(String email,String FIRST_NAME, String LAST_NAME)
	{
		
		Connection con = null;
		PreparedStatement ps = null;
		int i = 0;
		try {
			
			
			con = Db.Condb();

			String sql = "update customer_info  set FIRST_NAME=? and LAST_NAME=? where email=?";
				
			ps = con.prepareStatement(sql);

			ps.setString(1, FIRST_NAME);
			ps.setString(2, LAST_NAME );
			ps.setString(3,email);

			i = ps.executeUpdate();
			

		}

		catch (Exception e) {
			e.printStackTrace();
		}
		return i;
		
	}
	
	
	
		public static int  Insert_Order_buy(int order_details_id, String payment_type,String email,String address,Double order_amount,  int order_status_id,String shipping_method,Double discount,String ordered_date)
		{
			Connection con=Db.Condb();
			String sql2="insert into order_details(ORDER_DETAILS_ID, ADDRESS, ORDER_AMOUNT, ORDER_DATE, PAYMENT_TYPE, ORDER_STATUS_ID, SHIPPING_METHOD, ODER_DISCOUNTS, email)"+
					"values(?,?,?,?,?,?,?,?,?)";
			
			int i=0;
			
			try {
				PreparedStatement ps=con.prepareStatement(sql2);
				
				ps.setInt(1,order_details_id);
				ps.setString(2,address);
				ps.setDouble(3,order_amount);
				ps.setString(4,ordered_date);
				ps.setString(5,payment_type);
				ps.setInt(6,order_status_id);
				ps.setString(7,shipping_method);
				ps.setDouble(8,discount);
				ps.setString(9,email);
				

				i = ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return i;
			
		}
		
		public static int  Insert_Order_cart(int order_id,int product_id,String name,Double price,int quantity,String seller)
		{
			Connection con=Db.Condb();
			String sql3="insert into order_cart(ORDER_ID, PRODUCT_ID, NAME, PRICE, QUANTITY,SUPPLIER_ID)"+
					"values(?,?,?,?,?,?)";
			
			int i=0;
			
			try {
				PreparedStatement ps=con.prepareStatement(sql3);
				
				
				ps.setInt(1,order_id);
				ps.setInt(2,product_id);
				ps.setString(3,name);
				ps.setDouble(4, price);
				ps.setInt(5,quantity);
				ps.setString(6,seller);
				

				i = ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return i;
			
		}	
		
		
		public static int remove(Shopping_Cart ob) {
			
			int i=0;
			Connection con=Db.Condb();
			String sql="DELETE * FROM registered_cart WHERE PRODUCT_ID=?";
			
			try {
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setInt(1, ob.getProduct_id());
				//ps.setString(2, ob.getPRODUCT_UPDATED());
				
				return i=ps.executeUpdate();
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			return i;		

		}	
		
		
		public static ArrayList<Shopping_Cart>remove_show() {
			Connection con=null;
			ArrayList<Shopping_Cart> ar=new ArrayList<Shopping_Cart>();
			try {
				con=Db.Condb();
			String sql="select r,CART_ID r.PRODUCT_ID, r.PRODUCT_NAME, r.SHORT_DES, r.SELLER, r.DELIVERY_DATE, r.UNIT_PRICE, r.QUANTITY, r.TOTAL_PRICE, r.SHIPPING_CHARGE, r.SUB_TOTAL, r.email)"+
		           "from register_cart r "
			+"inner join image i on p.PRODUCT_ID=i.PRODUCT_ID";
			PreparedStatement ps=con.prepareStatement(sql);
			//ps.setString(1, x);
			ResultSet rs=ps.executeQuery();
			Shopping_Cart ob=null;

			while(rs.next())
			{
	       int CART_ID=rs.getInt(1);
			int PRODUCT_ID=rs.getInt(2);
			String PRODUCT_NAME=rs.getString(3);
			String SHORT_DES=rs.getString(4);
			String SELLER=rs.getString(5);
			String DELIVERY_DATE=rs.getString(6);
			double UNIT_PRICE=rs.getDouble(7);
			int QUANTITY=rs.getInt(8);
			double TOTAL_PRICE=rs.getDouble(9);
			double SHIPPING_CHARGE=rs.getDouble(10);
			double SUB_TOTAL=rs.getDouble(11);
			
			String email=rs.getString(12);
			
			
			ob=new Shopping_Cart(PRODUCT_ID, SHORT_DES, SELLER, SHIPPING_CHARGE, DELIVERY_DATE, UNIT_PRICE, PRODUCT_NAME, TOTAL_PRICE, QUANTITY, SUB_TOTAL, email);
			 ar.add(ob);
			}
			} catch (Exception e) {
				
				e.printStackTrace();
			}

			return ar;
		}
		
		public static int insert_feedback(feedback_bean ob) {
			int i=0;
			try {
			Connection con=null;
			con=Db.Condb();
			String sql="insert review(PRODUCT_NAME,EMAIL,RATING,REVIEW,DATE)values(?,?,?,?,?) ";
			
			
				PreparedStatement ps=con.prepareStatement(sql);
				
				ps.setString(1,ob.getProduct_name());
				ps.setString(2,ob.getEmail());
				ps.setString(3,ob.getRating());
				ps.setString(4,ob.getReview());
				ps.setString(5,ob.getDate());
				
			i=ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return i;
			
			
		}
		
		


	
	public static int insert_return(Return_bean ob){
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="insert returns(ORDER_DETAILS_ID,DETAILED_REASON,PHONE_NO,REASON,BANK_NAME,ACCOUNT_NUMBER,IFSC_CODE,BRANCH_CODE,NAME,EMAIL) VALUES(?,?,?,?,?,?,?,?,?,?)";
		       
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			
			ps.setInt(1, ob.getORDER_DETAILS_ID());
			ps.setString(2, ob.getDETAILED_REASON());
			ps.setString(3, ob.getPHONE_NO());
			ps.setString(4, ob.getREASON());
			ps.setString(5, ob.getBANK_NAME());
			ps.setString(6, ob.getACCOUNT_NUMBER());
			ps.setString(7, ob.getIFSC_CODE());
			ps.setInt(8, ob.getBRANCH_CODE());
			ps.setString(9, ob.getNAME());
			ps.setString(10, ob.getEMAIL());
			return i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return i;
		
	}

	
	public static int Update(Personal_Info_bean ob)
	{
		int i=0;
		Connection con=null;
		con=Db.Condb();
		String sql="UPDATE customer_info SET FIRST_NAME=?, LAST_NAME=? WHERE EMAIL=?";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getFIRST_NAME());
			ps.setString(2, ob.getLAST_NAME());
			ps.setString(3, ob.getEMAIL());
			
			 i=ps.executeUpdate();
			 System.out.println(con);
			if(i==1)
			{
				System.out.println(i+"row updated");
			}
			else
			{
				System.out.println(i+"row updated");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return i;
	
		
	}

	
	public static int Update(update_change_password_bean ob)
	{
		int j=0;
		Connection con=null;
		con=Db.Condb();
		String sql="UPDATE customer_info SET PASSWORD=? WHERE EMAIL=?";
		
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getPASSWORD());
		    ps.setString(2, ob.getEMAIL());
			
			 j=ps.executeUpdate();
			 System.out.println(con);
			if(j==1)
			{
				System.out.println(j+"row updated");
			}
			else
			{
				System.out.println(j+"row updated");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return j;

	}


	public static int Update(update_account_bean ob)
	{
		int k=0;
		Connection con=null;
		con=Db.Condb();
		String sql="UPDATE customer_info SET EMAIL=?, PHONE=? WHERE EMAIL=?";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getEMAIL());
			ps.setString(2, ob.getPHONE());
			ps.setString(3, ob.getEMAIL());
			
			 k=ps.executeUpdate();
			 System.out.println(con);
			if(k==1)
			{
				System.out.println(k+"row updated");
			}
			else
			{
				System.out.println(k+"row updated");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return k;
	
	}


	public static int Delete(deactivate_bean ob)
	{
		int m=0;
		Connection con=null;
		con=Db.Condb();
		String sql="Delete from customer_info WHERE EMAIL=?";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			
			ps.setString(1, ob.getEMAIL());
			
			 m=ps.executeUpdate();
			 System.out.println(con);
			if(m==1)
			{
				System.out.println(m+"row delete");
			}
			else
			{
				System.out.println(m+"row delete");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return m;
		
		
		
	}

	
	public static int Update(address_bean ob)
	{
		int j=0;
		Connection con=null;
		con=Db.Condb();
		String sql="UPDATE customer_info SET ADDRESS=? WHERE EMAIL=?";
		
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getADDRESS());
		    ps.setString(2, ob.getEMAIL());
			
			 j=ps.executeUpdate();
			 System.out.println(con);
			if(j==1)
			{
				System.out.println(j+"row updated");
			}
			else
			{
				System.out.println(j+"row updated");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return j;
	
		
	}
	
	public static int quantity_update(int product_id, int quantity, int color_id )
	{
		int k=0;
		//int quantity=0;
		Connection con=Db.Condb();
		System.out.println("product_id"+ product_id);
		System.out.println("color_id"+ color_id);
		System.out.println("color_id"+ color_id);
		try {
			
			 String sql1="Select QUANTITY from color where PRODUCT_ID=? and COLOR_ID=?";
			 


			PreparedStatement ps1=con.prepareStatement(sql1);
			ps1.setInt(1, product_id);
			ps1.setInt(2, color_id);
			ResultSet rs1=ps1.executeQuery();
			if(rs1.next())
			                   
			{   int quantity_db=rs1.getInt(1);
			                       
			        
			                    
			         int quantity5= quantity_db-quantity; 
			         System.out.println("quantity5"+ quantity5);
			         
			        
			                    
			                    String sql= "update color  set QUANTITY=? where PRODUCT_ID=? and COLOR_ID=?";
			                    

			                    PreparedStatement ps=con.prepareStatement(sql);
			                    ps.setInt(1,quantity5);
			                    ps.setInt(2,product_id );
			                    ps.setInt(3, color_id);
			                     k=ps.executeUpdate();
			                 
			        
			                   }
			
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return k;
	}
	
	
}
		
	
	


