package admin;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.mysql.jdbc.PreparedStatement;

import bean.Product_bean;
import db.Db;
import model.Product_Modeldb;

@WebServlet("/Update_Product")
@MultipartConfig(maxFileSize=1024*1024*16)
public class Update_Product extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int PRODUCT_ID=Integer.parseInt(request.getParameter("PRODUCT_ID"));
			String PRODUCT_NAME=request.getParameter("PRODUCT_NAME");
			String SHORT_DESCRIPTION=request.getParameter("SHORT_DESCRIPTION");
			String DETAILED_DESCRIPTION=request.getParameter("DETAILED_DESCRIPTION");
			String PRODUCT_KEYWORDS=request.getParameter("PRODUCT_KEYWORDS");
			String SUPPLIER_ID=request.getParameter("SUPPLIER_ID");
			double SALES_PRICE=Double.parseDouble(request.getParameter("SALES_PRICE"));
			
			double MSRP=Double.parseDouble(request.getParameter("MSRP"));
			String DISCOUNTS=request.getParameter("DISCOUNTS");
			String WEIGHT=request.getParameter("WEIGHT");

			String PRODUCT_STATUS=request.getParameter("PRODUCT_STATUS");
			String CASH_ON_DELIVERY=request.getParameter("CASH_ON_DELIVERY");
			String WARRENTY=request.getParameter("WARRENTY");
			String SHIPPING_COST=request.getParameter("SHIPPING_COST");
			String REPLACEMENT_WARRENTY=request.getParameter("REPLACEMENT_WARRENTY");
			String PRODUCT_UPDATED=request.getParameter("PRODUCT_UPDATED");
			String FILE_NAME=request.getParameter("filename");
			String COLOR=request.getParameter("color");
			String QUANTITY=request.getParameter("QUANTITY");
			/*Part image=request.getPart("IMAGE");
			InputStream in=null;
			
				try {
					in = image.getInputStream();
				} catch (Exception e) {
					
					e.printStackTrace();
				}
			
			
			
			
			int i=0,i1=0;
			if(in==null)
			{
      */
			Product_bean ob=new Product_bean(PRODUCT_ID,PRODUCT_NAME,SHORT_DESCRIPTION,DETAILED_DESCRIPTION,PRODUCT_KEYWORDS,SUPPLIER_ID,SALES_PRICE,MSRP,DISCOUNTS, WEIGHT,PRODUCT_STATUS,CASH_ON_DELIVERY,WARRENTY,SHIPPING_COST,REPLACEMENT_WARRENTY, PRODUCT_UPDATED);
			
			 int i=Product_Modeldb.update(ob);
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
                 else{ 
				 response.sendRedirect("View products.jsp");}
			 }
			 else
			 {
				 String msg="";
				 response.sendRedirect("Edit Image1?msg="+msg);
			 }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		/*else
		{
        Product_bean ob1=new Product_bean(PRODUCT_ID,PRODUCT_NAME,SHORT_DESCRIPTION,DETAILED_DESCRIPTION,PRODUCT_KEYWORDS,SUPPLIER_ID,SALES_PRICE,MSRP,DISCOUNTS,WEIGHT,PRODUCT_STATUS,CASH_ON_DELIVERY,WARRENTY,SHIPPING_COST);
        System.out.println("bbbbb");
		 i1=Product_Modeldb.updateall(ob1);
		 if(i1>0)
		 {
		     response.sendRedirect("Show_Product.jsp");
		     System.out.println("cccc");
		 }
		 else
		 {
			 System.out.println("dddd");
			 String msg="";
			 response.sendRedirect("Edit.jsp?msg="+msg); 
		 }
		}
*/	}


