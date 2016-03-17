package model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.AdminReg_bean;
import bean.Product_bean;
import db.Db;

public class AdminReg_Modeldb {
	public static int insert(AdminReg_bean ob){
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="insert into admin_info(FIRST_NAME,LAST_NAME,EMAIL_ID,USER_NAME,PASSWORD,CONFIRM_PASSWORD,IMAGE)"+
				"VALUES(?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
		
			ps.setString(1, ob.getFIRST_NAME());
			ps.setString(2, ob.getLAST_NAME());
			ps.setString(3, ob.getEMAIL_ID());
			ps.setString(4, ob.getUSER_NAME());
			ps.setString(5, ob.getPASSWORD());
			ps.setString(6, ob.getCONFIRM_PASSWORD());
			ps.setBlob(7, ob.getIMAGE());
			
			return i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}

	

	public static int Updateinfo(AdminReg_bean ob)
	{
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="UPDATE admin_info SET FIRST_NAME=?,LAST_NAME=?,USER_NAME=?,PASSWORD=? WHERE EMAIL_ID=?";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getFIRST_NAME());
			ps.setString(2, ob.getLAST_NAME());
			
			ps.setString(3, ob.getUSER_NAME());
			ps.setString(4, ob.getPASSWORD());
			ps.setString(5,  ob.getEMAIL_ID());
			
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
		
	}
}
