package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Color_Quantity_bean;
import db.Db;
import model.Color_quan_Modeldb;



@WebServlet("/Update_Quantity")
public class Update_Quantity extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int PRODUCT_ID=Integer.parseInt(request.getParameter("PRODUCT_ID"));
			String COLOR=request.getParameter("COLOR");
			System.out.println("color " +COLOR);
			String QUANTITY=request.getParameter("QUANTITY");
			System.out.println("QUANTITY " +QUANTITY);
			
			Color_Quantity_bean ob=new Color_Quantity_bean(PRODUCT_ID,COLOR,QUANTITY);
			
			int i=Color_quan_Modeldb.update(ob);
			
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
                 else{ response.sendRedirect("View products.jsp");}
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
