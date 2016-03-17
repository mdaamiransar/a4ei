package admin;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import bean.image_bean;
import db.Db;
import model.Image_Modeldb;

/**
 * Servlet implementation class Update_Image2
 */
@WebServlet("/Update_Image2")
@MultipartConfig
public class Update_Image2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	private static String getFileName(Part image)
	{
		String contentDisp = image.getHeader("content-disposition");
    System.out.println("content-disposition header= "+contentDisp);
    String[] tokens = contentDisp.split(";");
    for (String token : tokens) {
        if (token.trim().startsWith("filename")) {
            return token.substring(token.indexOf("=") + 2, token.length()-1);
        }
    }
    return "";
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int PRODUCT_ID=Integer.parseInt(request.getParameter("PRODUCT_ID"));
			System.out.println("Product_Id is "+PRODUCT_ID);
			
			String IMAGE_ID=request.getParameter("Image_Id");
			System.out.println("image id is"+IMAGE_ID);
			
			String COLOR=request.getParameter("COLOR");
			System.out.println("color is"+COLOR);
			
			String FILE_NAME=request.getParameter("Filename");
			System.out.println("FileName is"+FILE_NAME);
			
			Part image=request.getPart("Image");
			InputStream is = image.getInputStream();
			System.out.println("InputStream "+is);
			
			String filename_new=null;
			  filename_new=getFileName(image);
			 
			
      //image_bean ob= new image_bean( PRODUCT_ID,IMAGE_ID, COLOR, is, FILE_NAME,filename_new);
      image_bean ob= new image_bean(IMAGE_ID,PRODUCT_ID,filename_new,is);
			 
			 System.out.println(PRODUCT_ID+" "+IMAGE_ID+" "+filename_new);
			 int i= Image_Modeldb.updateImage(ob);
     System.out.println("iiii"+i);   
			  
    if(i>0)
			 {
			 HttpSession sees=request.getSession();
			 String name=(String)sees.getAttribute("Username");
			 
			 Connection con22=Db.Condb();
			 String sql22="Select USER_NAME from sub_admin_info where USER_NAME=?";
			 java.sql.PreparedStatement ps22=con22.prepareStatement(sql22);
			 ps22.setString(1,name);
			 ResultSet rs22=ps22.executeQuery();

			 if(rs22.next())
			 {

			 	String USER_NAME=rs22.getString("USER_NAME");
			 	System.out.println("USER_NAME"+USER_NAME);
			 	if(USER_NAME.equals(USER_NAME)){
			 		response.sendRedirect("S.View Products.jsp");
			 		
			 	}
			 }
			 
			 else{response.sendRedirect("View products.jsp");}
			 }
			 else
			 {
				 String msg="";
				 response.sendRedirect("Edit Image1?msg="+msg);
			 }
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
}
