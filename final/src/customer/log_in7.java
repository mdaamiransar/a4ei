package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Login_bean;


@WebServlet("/log_in7")
public class log_in7 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String usermail =request.getParameter("usermail");
		String password=request.getParameter("password");
	
	 
		Login_bean ob= new Login_bean(usermail, password);
		
		 int i=model.Login_model.login_verify(ob);
		    
		 if(i==1)
			{
				HttpSession sees=request.getSession();
				sees.setAttribute("email",usermail);
				
				
				
				response.sendRedirect("myorder.jsp?usermail="+usermail);
				 
			}
			else
			{
				String mssg="Your Login Are Incorrect.Try it correctly";
				response.sendRedirect("log_in6.jsp?Message="+mssg);
				
			}
	}
		
		
		
		
		
	}


