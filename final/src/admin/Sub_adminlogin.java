package admin;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Sub_adminloginbean;


@WebServlet("/Sub_adminlogin")

	
	public class Sub_adminlogin extends HttpServlet {
		private static final long serialVersionUID = 1L;
		
		public void init(ServletConfig config) throws ServletException{
			
				
		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String USER_NAME=request.getParameter("USER_NAME");
			System.out.println("Username is"+USER_NAME);
			String PASSWORD=request.getParameter("PASSWORD");
			System.out.println("PASSWORD"+PASSWORD);
			Sub_adminloginbean ob=new Sub_adminloginbean(USER_NAME,PASSWORD);
			int i=model.Sub_adminLoginModel.get_FIRST_NAME(ob);
			
			if(i==1)
			{
				HttpSession sees=request.getSession();
				sees.setAttribute("Username", USER_NAME);
			
				response.sendRedirect("Sub_Admin.jsp");
			}
			else{
				String alert="wrong username or password.Please try again";
				response.sendRedirect("SubAdmin_Login.jsp?Message="+alert);
			}
			
		}

	}
