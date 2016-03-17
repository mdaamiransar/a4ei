package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;

import db.Db;
import bean.update_infobean;

public class update_infomodel {
	public static int update(update_infobean ob)
	{
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="UPDATE retailer_information SET COMPANY_NAME=?, COMPANY_ADDRESS=?, PAN_NO=? ,BANK_NAME=? , ACCOUNT_NO=?, NAME_ON_ACCOUNT=?, IFSC_CODE=?, TIN_NO=? WHERE REGISTRATION_ID=? ";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getCOMPANY_NAME());
			
			ps.setString(2, ob.getCOMPANY_ADDRESS());
			ps.setString(3, ob.getPAN_NO());
		
			ps.setString(4, ob.getBANK_NAME());
			ps.setString(5, ob.getACCOUNT_NO());
			ps.setString(6, ob.getNAME_ON_ACCOUNT());
			ps.setString(7, ob.getIFSC_CODE());
			ps.setString(8, ob.getTIN_NO());
			ps.setInt(9, ob.getREGISTRATION_ID());
			
			
			
			 i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return i;
	}
}


