package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Product_bean;
import bean.review_bean;
import db.Db;

public class Product_Modeldb {
public static int insert(Product_bean ob) {
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		String sql="insert into products(PRODUCT_ID,CATEGORY_ID,SUBCATEGORY_ID,BRAND_ID,PRODUCT_NAME,"
				+ " SHORT_DESCRIPTION,DETAILED_DESCRIPTION,PRODUCT_KEYWORDS,SUPPLIER_ID,SALES_PRICE,"
				+ "MSRP,DISCOUNTS,WEIGHT,PRODUCT_STATUS,CASH_ON_DELIVERY,WARRENTY,SHIPPING_COST,REPLACEMENT_WARRENTY,PRODUCT_UPDATED)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, ob.getPRODUCT_ID());
			ps.setString(2, ob.getCATEGORY_ID());
			
			ps.setString(3, ob.getSUBCATEGORY_ID());
			
			ps.setString(4, ob.getBRAND_ID());
			ps.setString(5, ob.getPRODUCT_NAME());
			ps.setString(6, ob.getSHORT_DESCRIPTION());
			ps.setString(7, ob.getDETAILED_DESCRIPTION());
			ps.setString(8, ob.getPRODUCT_KEYWORDS());
			/*ps.setString(9, ob.getSUPPLIER_ID());*/
			ps.setString(9, ob.getCOMPANY_NAME());
			
			
			ps.setDouble(10, ob.getSALES_PRICE());
			
			ps.setDouble(11, ob.getMSRP());
			ps.setString(12, ob.getDISCOUNTS());
			ps.setString(13, ob.getWEIGHT());
			
			ps.setString(14, ob.getPRODUCT_STATUS());
			ps.setString(15, ob.getCASH_ON_DELIVERY());
			ps.setString(16, ob.getWARRENTY());
			ps.setString(17, ob.getSHIPPING_COST());
			ps.setString(18, ob.getREPLACEMENT_WARRENTY());
			/*ps.setBlob(18,   ob.getIMAGE());*/
			ps.setString(19, ob.getPRODUCT_UPDATED());
		
			
			
			
			
			 i=ps.executeUpdate();
			 
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		String sql1="insert into products1(PRODUCT_ID,CATEGORY_ID,SUBCATEGORY_ID,BRAND_ID,PRODUCT_NAME,"
				+ " SHORT_DESCRIPTION,DETAILED_DESCRIPTION,PRODUCT_KEYWORDS,SUPPLIER_ID,SALES_PRICE,"
				+ "MSRP,DISCOUNTS,WEIGHT,PRODUCT_STATUS,CASH_ON_DELIVERY,WARRENTY,SHIPPING_COST,REPLACEMENT_WARRENTY,PRODUCT_UPDATED)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		
		try {
			PreparedStatement ps1=con.prepareStatement(sql1);
			ps1.setInt(1, ob.getPRODUCT_ID());
			ps1.setString(2, ob.getCATEGORY_ID());
			
			ps1.setString(3, ob.getSUBCATEGORY_ID());
			
			ps1.setString(4, ob.getBRAND_ID());
			ps1.setString(5, ob.getPRODUCT_NAME());
			ps1.setString(6, ob.getSHORT_DESCRIPTION());
			ps1.setString(7, ob.getDETAILED_DESCRIPTION());
			ps1.setString(8, ob.getPRODUCT_KEYWORDS());
			/*ps.setString(9, ob.getSUPPLIER_ID());*/
			ps1.setString(9, ob.getCOMPANY_NAME());
			
			
			ps1.setDouble(10, ob.getSALES_PRICE());
			
			ps1.setDouble(11, ob.getMSRP());
			ps1.setString(12, ob.getDISCOUNTS());
			ps1.setString(13, ob.getWEIGHT());
			
			ps1.setString(14, ob.getPRODUCT_STATUS());
			ps1.setString(15, ob.getCASH_ON_DELIVERY());
			ps1.setString(16, ob.getWARRENTY());
			ps1.setString(17, ob.getSHIPPING_COST());
			ps1.setString(18, ob.getREPLACEMENT_WARRENTY());
			/*ps.setBlob(18,   ob.getIMAGE());*/
			ps1.setString(19, ob.getPRODUCT_UPDATED());
		
			
			
			
			
			 i=ps1.executeUpdate();
			 
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
			return i;
		}

public static int product_Avail(String PRODUCT_NAME,double SALES_PRICE,String company_name)
{
	Connection con=null;
	int count=0;
	try {
		con=Db.Condb();
		String sql="select * from products where PRODUCT_NAME=? and SUPPLIER_ID!=? and SALES_PRICE>=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,PRODUCT_NAME);
		ps.setString(2,company_name);
		ps.setDouble(3,SALES_PRICE);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			count++;
		}
	}
catch (Exception e) {
		
		e.printStackTrace();
	}
	return count;
	
}
public static ArrayList<Product_bean> show(String name1) {
	Connection con=null;
	ArrayList<Product_bean> ar=new ArrayList<Product_bean>();
	try {
		con=Db.Condb();
	/*String sql="select p.PRODUCT_ID,p.CATEGORY_ID,p.SUBCATEGORY_ID,p.BRAND_ID, "
	+"p.PRODUCT_NAME,p.SHORT_DESCRIPTION,p.DETAILED_DESCRIPTION,p.PRODUCT_KEYWORDS, "
	+"p.SUPPLIER_ID,p.SALES_PRICE,p.MSRP,p.DISCOUNTS,p.WEIGHT,p.PRODUCT_STATUS, "
	+"p.CASH_ON_DELIVERY,p.WARRENTY,p.SHIPPING_COST,p.REPLACEMENT_WARRENTY,p.PRODUCT_UPDATED,i.FILE_NAME,i.COLOR,i.IMAGE_ID from products p "
	+"inner join image i on p.PRODUCT_ID=i.PRODUCT_ID";*/
		String sql="select p.PRODUCT_ID,p.CATEGORY_ID,p.SUBCATEGORY_ID,p.BRAND_ID, "
				+"p.PRODUCT_NAME,p.SHORT_DESCRIPTION,p.DETAILED_DESCRIPTION,p.PRODUCT_KEYWORDS, "
				+"p.SUPPLIER_ID,p.SALES_PRICE,p.MSRP,p.DISCOUNTS,p.WEIGHT,p.PRODUCT_STATUS, "
				+"p.CASH_ON_DELIVERY,p.WARRENTY,p.SHIPPING_COST,p.REPLACEMENT_WARRENTY,p.PRODUCT_UPDATED,b.BRAND_NAME from products p inner join brand b on p.BRAND_ID=b.BRAND_ID where SUPPLIER_ID=?";
				
				
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, name1);
	ResultSet rs=ps.executeQuery();
	Product_bean ob=null;

	while(rs.next())
	{
	int PRODUCT_ID=rs.getInt(1);
	String CATEGORY_ID=rs.getString(2);
	String SUBCATEGORY_ID=rs.getString(3);
	String BRAND_ID=rs.getString(4);
	String PRODUCT_NAME=rs.getString(5);
	String SHORT_DESCRIPTION=rs.getString(6);
	String DETAILED_DESCRIPTION=rs.getString(7);
	String PRODUCT_KEYWORDS=rs.getString(8);
	String COMPANY_NAME=rs.getString(9);
	double SALES_PRICE=rs.getDouble(10);
	
	double MSRP=rs.getDouble(11);
	String DISCOUNTS=rs.getString(12);
	String WEIGHT=rs.getString(13);
	
	
	String PRODUCT_STATUS=rs.getString(14);
	String CASH_ON_DELIVERY=rs.getString(15);
	String WARRENTY=rs.getString(16);
	String SHIPPING_COST=rs.getString(17);
    String REPLACEMENT_WARRENTY=rs.getString(18);
	String PRODUCT_UPDATED=rs.getString(19);
	String BRAND_NAME=rs.getString(20);
	//String filename=rs.getString(20);
	//String color=rs.getString(21);
	//int image_id=rs.getInt(22);
	
	//ob=new Product_bean(PRODUCT_ID,PRODUCT_NAME,BRAND_ID, SUPPLIER_ID,MSRP,SALES_PRICE,PRODUCT_STATUS,SHIPPING_COST,PRODUCT_UPDATED,filename,color,image_id);
	ob=new Product_bean(PRODUCT_ID,PRODUCT_NAME,BRAND_NAME, COMPANY_NAME,MSRP,SALES_PRICE,PRODUCT_STATUS,SHIPPING_COST,PRODUCT_UPDATED);
	 ar.add(ob);
	}
	} catch (Exception e) {
		
		e.printStackTrace();
	}

	return ar;
}

public static int CountImageByProductId(int pid)
{
  int count=0;
  try {
	Connection con=null;
	  
			con=Db.Condb();
			String sql="select * from image where PRODUCT_ID=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,pid);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				count++;
			}
} catch (SQLException e) {
	
	e.printStackTrace();
}
		return count;
  
}


public static int update(Product_bean ob) {
	int i=0;
	Connection con=null;
	con=Db.Condb();
	String sql="UPDATE products SET SHORT_DESCRIPTION=?,DETAILED_DESCRIPTION=?,PRODUCT_KEYWORDS=?,SUPPLIER_ID=?,SALES_PRICE=?,"+
			"MSRP=?,DISCOUNTS=?,WEIGHT=?,PRODUCT_STATUS=?,CASH_ON_DELIVERY=?,WARRENTY=?,SHIPPING_COST=?,REPLACEMENT_WARRENTY=?,PRODUCT_UPDATED=? WHERE PRODUCT_ID=?";
	
	try {
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setString(1, ob.getSHORT_DESCRIPTION());
		ps.setString(2, ob.getDETAILED_DESCRIPTION());
		ps.setString(3, ob.getPRODUCT_KEYWORDS());
		ps.setString(4, ob.getCOMPANY_NAME());
		ps.setDouble(5, ob.getSALES_PRICE());
		
		ps.setDouble(6, ob.getMSRP());
		ps.setString(7, ob.getDISCOUNTS());
		ps.setString(8, ob.getWEIGHT());
		
		ps.setString(9, ob.getPRODUCT_STATUS());
		ps.setString(10, ob.getCASH_ON_DELIVERY());
		ps.setString(11, ob.getWARRENTY());
		ps.setString(12, ob.getSHIPPING_COST());
		ps.setString(13, ob.getREPLACEMENT_WARRENTY());
		
		
		ps.setString(14, ob.getPRODUCT_UPDATED());
		ps.setInt(15, ob.getPRODUCT_ID());
		
		
	  i=ps.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
		
	}
	String sql1="UPDATE products1 SET SHORT_DESCRIPTION=?,DETAILED_DESCRIPTION=?,PRODUCT_KEYWORDS=?,SUPPLIER_ID=?,SALES_PRICE=?,"+
			"MSRP=?,DISCOUNTS=?,WEIGHT=?,PRODUCT_STATUS=?,CASH_ON_DELIVERY=?,WARRENTY=?,SHIPPING_COST=?,REPLACEMENT_WARRENTY=?,PRODUCT_UPDATED=? WHERE PRODUCT_ID=?";
	try {
		PreparedStatement ps1=con.prepareStatement(sql1);
		
		ps1.setString(1, ob.getSHORT_DESCRIPTION());
		ps1.setString(2, ob.getDETAILED_DESCRIPTION());
		ps1.setString(3, ob.getPRODUCT_KEYWORDS());
		ps1.setString(4, ob.getCOMPANY_NAME());
		ps1.setDouble(5, ob.getSALES_PRICE());
		
		ps1.setDouble(6, ob.getMSRP());
		ps1.setString(7, ob.getDISCOUNTS());
		ps1.setString(8, ob.getWEIGHT());
		
		ps1.setString(9, ob.getPRODUCT_STATUS());
		ps1.setString(10, ob.getCASH_ON_DELIVERY());
		ps1.setString(11, ob.getWARRENTY());
		ps1.setString(12, ob.getSHIPPING_COST());
		ps1.setString(13, ob.getREPLACEMENT_WARRENTY());
		
		
		ps1.setString(14, ob.getPRODUCT_UPDATED());
		ps1.setInt(15, ob.getPRODUCT_ID());
		
		
 i=ps1.executeUpdate();
	} catch (SQLException e) {
		
		e.printStackTrace();
	
}
	return i;
}



public static int delete(Product_bean ob) {
	
	int i=0;
	Connection con=null;
	con=Db.Condb();
	String sql="DELETE * FROM products WHERE PRODUCT_ID=?";
	
	try {
		PreparedStatement ps=con.prepareStatement(sql);
		
		//ps.setString(2, ob.getPRODUCT_UPDATED());
		
		return i=ps.executeUpdate();
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	
	return i;		

}


public static ArrayList<review_bean> showreview(){
	Connection con=null;
	ArrayList<review_bean> ar=new ArrayList<review_bean>();
	
		try {
			review_bean ob=null;
			con=Db.Condb();
			String sql="select * from review ";
					
			PreparedStatement ps=con.prepareStatement(sql);
            
			ResultSet rs=ps.executeQuery();
			

			while(rs.next())
			{
				String PRODUCT_NAME=rs.getString(2);
				String EMAIL=rs.getString(3);
				String RATING=rs.getString(4);
				String REVIEW=rs.getString(5);
				String DATE=rs.getString(6);
				ob=new review_bean(PRODUCT_NAME,EMAIL,RATING,REVIEW,DATE);
				ar.add(ob);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	return ar;	
}




}
