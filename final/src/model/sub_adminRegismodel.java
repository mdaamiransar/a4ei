package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.sub_adminRegisBean;
import db.Db;

public class sub_adminRegismodel {
public static int insert(sub_adminRegisBean ob){
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="insert into sub_admin_info(FIRST_NAME,LAST_NAME,EMAIL_ID,USER_NAME,PASSWORD,CONFIRM_PASSWORD,IMAGE)"+
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
			
			i=ps.executeUpdate();
			 
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
		String sql44="insert into sub_admin_power(USER_NAME, Edit, Delete1)values(?,?,?)";
		
		try {
			PreparedStatement ps1=con.prepareStatement(sql44);
			ps1.setString(1,ob.getUSER_NAME());
			ps1.setString(2,"no");
			ps1.setString(3,"no");
			
			
			
			 i=ps1.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return i;
	}
}

	
		