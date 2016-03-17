 package admin;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.AdminLogin_bean;
import db.Db;
import model.AdminLogin_Modeldb;


@WebServlet("/Admin_Login")
public class Admin_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*String username="";
	String password="";
	String email_id="";*/
	public void init(ServletConfig config) throws ServletException{
		
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String USER_NAME=request.getParameter("USER_NAME");
		System.out.println("Username is"+USER_NAME);
		String PASSWORD=request.getParameter("PASSWORD");
		
		AdminLogin_bean ob=new AdminLogin_bean(USER_NAME,PASSWORD);
		int i=model.AdminLogin_Modeldb.get_FIRST_NAME(ob);
		
		if(i==1)
		{
			HttpSession sees=request.getSession();
			sees.setAttribute("Username", USER_NAME);
			//sees.setAttribute("email_id", EMAIL_ID);
			response.sendRedirect("Dashboard.jsp");
		}
		else{
			String alert="wrong username or password.Please try again";
			response.sendRedirect("Admin_Login.jsp?Message="+alert);
		}
		
	}

}
