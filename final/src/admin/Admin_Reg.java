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

import bean.AdminReg_bean;
import model.AdminReg_Modeldb;


@WebServlet("/Admin_Reg")
@MultipartConfig(maxFileSize=1024*1024*16)
public class Admin_Reg extends HttpServlet {
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
	    
	    AdminReg_bean ob=new AdminReg_bean( FIRST_NAME, LAST_NAME, EMAIL_ID, USER_NAME, PASSWORD, CONFIRM_PASSWORD, in);
	    
	    int i=AdminReg_Modeldb.insert(ob);
		if(i>0)
			
			response.sendRedirect("Admin_Login.jsp");
		else
		{
			String error="Insertion error";
			response.sendRedirect("Admin_Signup.jsp?error="+error);
		}
	
	}

}
