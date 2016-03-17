package admin;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Db;

/**
 * Servlet implementation class Product_Image
 */
@WebServlet("/Product_Image")
@MultipartConfig(maxFileSize=1024*1024*16)
public class Product_Image extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	
try {
			
	int PRODUCT_ID=Integer.parseInt(request.getParameter("product_id"));
	String image_id=request.getParameter("image_id");
	
			
			String sql="Select IMAGE from image where PRODUCT_ID=? and IMAGE_ID=?";
			Connection con=Db.Condb();
			   PreparedStatement ps=con.prepareStatement(sql);
			  ps.setInt(1,PRODUCT_ID);
			   ps.setString(2,image_id);
			   
			   ResultSet rs=ps.executeQuery();
			   byte[] b=null;
			   if(rs.next())
			   {
				   Blob name=rs.getBlob("IMAGE");
				    b=name.getBytes(1,(int)name.length());
			   }
		 ServletOutputStream out=response.getOutputStream();
				   out.write(b);
				   out.flush();
			   
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	
	}

}
