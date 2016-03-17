package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import bean.image_bean;
import db.Db;

public class Image_Modeldb {

	public static int insert(image_bean ob) {
		int i=0;
		Connection con=null;
		con=Db.Condb();
		String sql="insert into image(IMAGE_ID,PRODUCT_ID,COLOR,FILE_NAME,IMAGE)values(?,?,?,?,?)";
		try {
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, ob.getIMAGE_ID());
		ps.setInt(2, ob.getPRODUCT_ID());
		ps.setString(3, ob.getCOLOR());
		ps.setString(4, ob.getFilename());
		ps.setBlob(5,  ob.getIMAGE());
		
		
		 i=ps.executeUpdate();
	}
	catch (SQLException e) {
		
		e.printStackTrace();
	}
		String sql1="insert into image1(IMAGE_ID,PRODUCT_ID,COLOR,FILE_NAME,IMAGE)values(?,?,?,?,?)";
		try {
			PreparedStatement ps1=con.prepareStatement(sql1);
			ps1.setString(1, ob.getIMAGE_ID());
			ps1.setInt(2, ob.getPRODUCT_ID());
			ps1.setString(3, ob.getCOLOR());
			ps1.setString(4, ob.getFilename());
			ps1.setBlob(5,  ob.getIMAGE());
			
			
			 i=ps1.executeUpdate();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}


	return i;
	}


	public static int updateImage(image_bean ob) {
		int i=0;
		Connection con=null;
		con=Db.Condb();
		//String sql="UPDATE image SET IMAGE=?, FILE_NAME=? where PRODUCT_ID=? and FILE_NAME=? and COLOR=? and IMAGE_ID=?";
		String sql="UPDATE image SET IMAGE=?, FILE_NAME=? where PRODUCT_ID=? and IMAGE_ID=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
		    ps.setBlob(1,ob.getIMAGE());
			ps.setString(2,ob.getFilename_new());
			///ps.setString(3, ob.getIMAGE_ID());
			ps.setInt(3,ob.getPRODUCT_ID());
			/*ps.setString(4, ob.getFilename());
			ps.setString(5, ob.getCOLOR());*/
			ps.setString(4,ob.getIMAGE_ID());
		    System.out.println(ob.getFilename_new()+" "+ ob.getPRODUCT_ID()+" "+ob.getIMAGE_ID());
			
			i=ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql1="UPDATE image1 SET IMAGE=?, FILE_NAME=? where PRODUCT_ID=? and IMAGE_ID=?";
		try {
			PreparedStatement ps1=con.prepareStatement(sql1);
		    ps1.setBlob(1,ob.getIMAGE());
			ps1.setString(2,ob.getFilename_new());
			///ps.setString(3, ob.getIMAGE_ID());
			ps1.setInt(3,ob.getPRODUCT_ID());
			/*ps.setString(4, ob.getFilename());
			ps.setString(5, ob.getCOLOR());*/
			ps1.setString(4,ob.getIMAGE_ID());
		    System.out.println(ob.getFilename_new()+" "+ ob.getPRODUCT_ID()+" "+ob.getIMAGE_ID());
			
			i=ps1.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}
	
	
}
