package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.subadmin_dtls_bean;
import db.Db;

public class subadmin_dtls_model {

	public static ArrayList<subadmin_dtls_bean> showsub(){
		Connection con=null;
		ArrayList<subadmin_dtls_bean> ar=new ArrayList<subadmin_dtls_bean>();
		
			try {
				subadmin_dtls_bean ob=null;
				con=Db.Condb();
				String sql="select FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL_ID from sub_admin_info ";
						
				PreparedStatement ps=con.prepareStatement(sql);
	            
				ResultSet rs=ps.executeQuery();
				

				while(rs.next())
				{
					String first_Name=rs.getString(1);
					String last_Name=rs.getString(2);
					
					String user_Name=rs.getString(3);
					String password=rs.getString(4);
					String email=rs.getString(5);
					
					ob=new subadmin_dtls_bean(first_Name,last_Name,user_Name,password,email);
					ar.add(ob);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return ar;	
	}

}
