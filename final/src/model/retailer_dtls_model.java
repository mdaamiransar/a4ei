package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.retailer_dtls_bean;
import db.Db;

public class retailer_dtls_model {
	
	public static ArrayList<retailer_dtls_bean> showretailer(){
		Connection con=null;
		ArrayList<retailer_dtls_bean> ar=new ArrayList<retailer_dtls_bean>();
		
			try {
				retailer_dtls_bean ob=null;
				con=Db.Condb();
				String sql="select a1.FIRST_NAME,a1.LAST_NAME,a1.USER_NAME,a1.CREATE_PASSWORD,a1.CONTACT_NUMBER,a1.EMAIL_ADDRESS,a2.COMPANY_NAME from retailer_registration a1 inner join retailer_information a2 on a1.REGISTRATION_ID=a2.REGISTRATION_ID ";
						
				PreparedStatement ps=con.prepareStatement(sql);
	            
				ResultSet rs=ps.executeQuery();
				

				while(rs.next())
				{
					String first_Name=rs.getString(1);
					String last_Name=rs.getString(2);
					
					String user_Name=rs.getString(3);
					String password=rs.getString(4);
					String contact_no=rs.getString(5);
					String email=rs.getString(6);
					String company_Name=rs.getString(7);
					ob=new retailer_dtls_bean(first_Name,last_Name,company_Name,user_Name,password,contact_no,email);
					ar.add(ob);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return ar;	
	}

}
