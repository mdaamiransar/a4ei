package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Login_bean;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usermail =request.getParameter("usermail");
		String password=request.getParameter("password");
		String page=request.getParameter("page");
		
		Login_bean ob= new Login_bean(usermail, password);
		
		 int i=model.Login_model.login_verify(ob);
		    
		 if(i==1)
			{
				HttpSession sees=request.getSession();
				sees.setAttribute("email",usermail  );
				response.sendRedirect(page);
				 
			}
			else
			{
				String mssg="Your Login Are Incorrect.Try it correctly";
				//response.sendRedirect("index2.jsp?Message="+mssg);
				response.sendRedirect(page+"?Message="+mssg);
			}
		
	}

}
