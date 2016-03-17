package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AdminReg_bean;
import model.AdminReg_Modeldb;


@WebServlet("/Admin_info_update")
public class Admin_info_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String FIRST_NAME=request.getParameter("FIRST_NAME");
		String LAST_NAME=request.getParameter("LAST_NAME");
		
		String USER_NAME=request.getParameter("USER_NAME");
		String PASSWORD=request.getParameter("password");
		
		String EMAIL_ID=request.getParameter("EMAIL_ID");
		System.out.println("EMAIL_ID servelet"+EMAIL_ID);
	
		
		AdminReg_bean ob=new AdminReg_bean(FIRST_NAME,LAST_NAME,USER_NAME,PASSWORD,EMAIL_ID);
		
		int i=AdminReg_Modeldb.Updateinfo(ob);
		System.out.println("i servelet"+i);
		if(i>=0)
		 {
				response.sendRedirect("Dashboard.jsp");
		 }
		 else
		 {
			 String msg="";
			 response.sendRedirect("EditProfile.jsp?msg="+msg);
		 }
	}

}
