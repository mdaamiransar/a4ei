package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.Db;

import bean.otherBean;


public class other_model {
	public static ArrayList<otherBean> show() {
		Connection con=null;
		ArrayList<otherBean> ar=new ArrayList<otherBean>();
		try {
			con=Db.Condb();
		
			String sql="select PRODUCT_NAME,SUPPLIER_ID,SALES_PRICE from products where SUPPLIER_ID=?";
					
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery(sql);
			while(rs.next())
				
			{
				
			
				String PRODUCT_NAME=rs.getString(1);
				String COMPANY_NAME=rs.getString(2);
				Double SALES_PRICE=rs.getDouble(3);
			
			
				
			
				otherBean ob=new otherBean(PRODUCT_NAME,COMPANY_NAME,SALES_PRICE);
			 ar.add(ob);
			}
			} catch (Exception e) {
				
				e.printStackTrace();
			}

			return ar;
		}
	}