package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import db.Db;
import bean.update_statusbean;

public class order_statusModel {
	public static int update(update_statusbean ob) {
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="UPDATE order_details SET ORDER_STATUS_ID=? WHERE ORDER_DETAILS_ID=?";
		
		/*String sql="UPDATE order_details SET ORDER_DETAILS_ID=? WHERE ORDER_STATUS_ID=?";*/
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, ob.getORDER_STATUS_ID());
			ps.setInt(2, ob.getORDER_DETAILS_ID());
			return i=ps.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}
		return i;
	}

}
