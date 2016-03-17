package admin;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import bean.sub_adminRegisBean;
import db.Db;
import model.sub_adminRegismodel;


@WebServlet("/sub_admin_regis")
@MultipartConfig(maxFileSize=1024*1024*16)
public class sub_admin_regis extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String FIRST_NAME=request.getParameter("FIRST_NAME");
		String LAST_NAME=request.getParameter("LAST_NAME");
		String EMAIL_ID=request.getParameter("EMAIL_ID");
		String USER_NAME=request.getParameter("USER_NAME");
		String PASSWORD=request.getParameter("PASSWORD");
		String CONFIRM_PASSWORD=request.getParameter("CONFIRM_PASSWORD");
	    Part IMAGE=request.getPart("IMAGE");
	    InputStream in=IMAGE.getInputStream();
	    
	    sub_adminRegisBean ob=new sub_adminRegisBean( FIRST_NAME, LAST_NAME, EMAIL_ID, USER_NAME, PASSWORD, CONFIRM_PASSWORD, in);
	    
	    int i=sub_adminRegismodel.insert(ob);
	    
		if(i>0){
			String msg="successful";
			response.sendRedirect("Admin x.jsp?"+msg);}
		
		else
		{
			String error="Insertion error";
			response.sendRedirect("SubAdmin.jsp?error="+error);
		}
	
	}

}
