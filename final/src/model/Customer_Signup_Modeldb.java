package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.Customer_signup_bean;
import db.Db;

public class Customer_Signup_Modeldb {
	public static int insert(Customer_signup_bean ob){
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="insert into CUSTOMER_INFO(CUSTOMER_ID,TITLE,FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL,PHONE,ADDRESS)"+
		"VALUES(?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, ob.getCUSTOMER_ID());
			ps.setString(2, ob.getTITLE());
			ps.setString(3, ob.getFIRST_NAME());
			ps.setString(4, ob.getLAST_NAME());
			ps.setString(5, ob.getUSER_NAME());
			ps.setString(6, ob.getPASSWORD());
			
			ps.setString(7, ob.getEMAIL());
			ps.setString(8, ob.getPHONE());
			ps.setString(9, ob.getADDRESS());
			
			return i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	
	}

}
