package retailerServ;

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


@WebServlet("/Update_Image3")
@MultipartConfig
public class Update_Image3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
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
 				response.sendRedirect("show_product.jsp");
 		 }
 		 else
 		 {
 			 String msg="";
 			 response.sendRedirect("edit.jsp?msg="+msg);
 		 }
	
	}
}
