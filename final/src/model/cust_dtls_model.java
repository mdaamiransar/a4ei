package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.cust_dtls_bean;

import db.Db;

public class cust_dtls_model {

	
	public static ArrayList<cust_dtls_bean> showcust(){
		Connection con=null;
		ArrayList<cust_dtls_bean> ar=new ArrayList<cust_dtls_bean>();
		
			try {
				cust_dtls_bean ob=null;
				con=Db.Condb();
				String sql="select FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL,PHONE from customer_info ";
						
				PreparedStatement ps=con.prepareStatement(sql);
	            
				ResultSet rs=ps.executeQuery();
				

				while(rs.next())
				{
					String first_Name=rs.getString(1);
					String last_Name=rs.getString(2);
					
					String user_Name=rs.getString(3);
					String password=rs.getString(4);
					String email=rs.getString(5);
					String PHONE=rs.getString(6);
					
					ob=new cust_dtls_bean(first_Name,last_Name,user_Name,password,email,PHONE);
					ar.add(ob);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return ar;	
	}

}
