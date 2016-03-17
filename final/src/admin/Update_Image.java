package admin;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import bean.image_bean;
import model.Image_Modeldb;


@WebServlet("/Update_Image")
@MultipartConfig(maxFileSize=1024*1024*16)
public class Update_Image extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		int PRODUCT_ID=Integer.parseInt(request.getParameter("PRODUCT_ID"));
		System.out.println("Product_Id is "+PRODUCT_ID);
		String COLOR=request.getParameter("COLOR");
		System.out.println("Color is"+COLOR);
		String FILE_NAME=request.getParameter("Filename");
		System.out.println("FileName is"+FILE_NAME);
		String image_id=request.getParameter("Image_Id");
		System.out.println("Image_Id is"+image_id);
		Part image=request.getPart("Image");
		
		InputStream is=image.getInputStream();
		System.out.println("xxxxx"+is);
		image_bean ob= new image_bean(image_id, PRODUCT_ID, COLOR, is, FILE_NAME);
	    
          
	
	   int i= Image_Modeldb.updateImage(ob);
          
          if(i>0)
 		 {
 				response.sendRedirect("View products.jsp");
 		 }
 		 else
 		 {
 			 String msg="";
 			 response.sendRedirect("Edit Image1.jsp?msg="+msg);
 		 }
	}

}
