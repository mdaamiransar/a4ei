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


@WebServlet("/Image1")
@MultipartConfig
/*(maxFileSize=1024*1024*16)*/
public class Image1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 private static String getFileName(Part part) {
	        String contentDisp = part.getHeader("content-disposition");
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
		
		 int i=0;
		 try {
		String IMAGE_ID=request.getParameter("IMAGE_ID");
		int PRODUCT_ID=Integer.parseInt(request.getParameter("product"));
		String COLOR=request.getParameter("color");
		
	
		Part image1=request.getPart("IMAGE1");
		InputStream in1=image1.getInputStream();
		String filename1=null;
		filename1 =getFileName(image1);
		/*int l1=filename1.length();*/
		
		
		Part image2=request.getPart("IMAGE2");
		InputStream in2=image2.getInputStream();
		String filename2=null;
		filename2 =getFileName(image2);
		/*int l2=filename2.length();*/
		
		
		
		Part image3=request.getPart("IMAGE3");
		InputStream in3=image3.getInputStream();
		String filename3=null;
		filename3 =getFileName(image3);
		/*int l3=filename2.length();*/
		
		
		
		
		Part image4=request.getPart("IMAGE4");
		InputStream in4=image4.getInputStream();
		String filename4=null;
		filename4 =getFileName(image4);
		/*int l4=filename2.length();*/
		
		System.out.println(in1.available());
		System.out.println(in2.available());
		
			if(in1.available()!=0)
			{ 
				image_bean ob= new image_bean(IMAGE_ID,PRODUCT_ID,COLOR,in1,filename1);
			
			    i=Image_Modeldb.insert(ob);
			}	
			
			if(in2.available()!=0)
			{ 
				image_bean ob= new image_bean(IMAGE_ID,PRODUCT_ID,COLOR,in2,filename2);
			
			    i=Image_Modeldb.insert(ob);
			}	
			
			if(in3.available()!=0)
			{ 
				image_bean ob= new image_bean(IMAGE_ID,PRODUCT_ID,COLOR,in3,filename3);
			
			    i=Image_Modeldb.insert(ob);
			
			}
			
			if(in4.available()!=0)
			{ 
				image_bean ob= new image_bean(IMAGE_ID,PRODUCT_ID,COLOR,in4,filename4);
			
			    i=Image_Modeldb.insert(ob);
			
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		if(i>0)
			response.sendRedirect("Product.jsp");
		else
		{
			String error="Insertion error";
			response.sendRedirect("Product.jsp?error="+error);
		}
		 
		 }

}
