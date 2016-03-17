package model;


import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;

import db.Db;
import bean.RetailerRegis_Bean;

public class Modelret {

	
		public static int insert(RetailerRegis_Bean ob){
			int i=0;
			
		Connection con=null;
		con=Db.Condb();
		
	String sql="insert into RETAILER_REGISTRATION(REGISTRATION_ID,FIRST_NAME,LAST_NAME,ADDRESS,PIN,CONTACT_NUMBER,EMAIL_ADDRESS,YOUR_MAIN_SELLING_CATEGORY,USER_NAME,CREATE_PASSWORD,RETYPE_PASSWORD)values(?,?,?,?,?,?,?,?,?,?,?)";		
				
	try{
					

			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,ob.getREGISTRATION_ID());
			ps.setString(2,ob.getFIRST_NAME());
			ps.setString(3,ob.getLAST_NAME());
			ps.setString(4,ob.getADDRESS());
			ps.setString(5,ob.getPIN());
			ps.setString(6,ob.getCONTACT_NUMBER());
			ps.setString(7,ob.getEMAIL_ADDRESS());
			ps.setString(8,ob.getYOUR_MAIN_SELLING_CATEGORY());
			ps.setString(9,ob.getUSER_NAME());
			ps.setString(10,ob.getCREATE_PASSWORD());
			ps.setString(11,ob.getRETYPE_PASSWORD());
			
				return i=ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return i;
		}
}

		
			