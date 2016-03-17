package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import db.Db;
import bean.retailer_info_bean;

public class Modelinfo {

	public static int insert(retailer_info_bean ob){
		int i=0;
		
	Connection con=null;
	con=Db.Condb();
	
String sql="insert into retailer_information(COMPANY_NAME,COMPANY_ADDRESS,PAN_NO,ADDRESS_PROOF,BANK_NAME,ACCOUNT_NO,NAME_ON_ACCOUNT,IFSC_CODE,TIN_NO)values(?,?,?,?,?,?,?,?,?)";		
			
try{
				

		PreparedStatement ps=con.prepareStatement(sql);
		
		
		ps.setString(1,ob.getCOMPANY_NAME());
		ps.setString(2,ob.getCOMPANY_ADDRESS());
		ps.setString(3,ob.getPAN_NO());
		ps.setBlob(4,ob.getADDRESS_PROOF());
		ps.setString(5,ob.getBANK_NAME());
		ps.setString(6,ob.getACCOUNT_NO());
		ps.setString(7,ob.getNAME_ON_ACCOUNT());
		ps.setString(8,ob.getIFSC_CODE());
		ps.setString(9,ob.getTIN_NO());
		
		
			return i=ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}
}


