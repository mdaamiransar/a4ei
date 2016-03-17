package customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Login_bean;
import cart.Dao_Cart;
import cart.Shopping_Cart;

@WebServlet("/LoginServlet3")
public class LoginServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usermail =request.getParameter("usermail");
		String password=request.getParameter("password");
		int product_id=Integer.parseInt(request.getParameter("product_id"));
	 
		Login_bean ob= new Login_bean(usermail, password);
		
		 int i=model.Login_model.login_verify(ob);
		    
		 if(i==1)
			{
				HttpSession sees=request.getSession();
				sees.setAttribute("email",usermail);
				
				
				
				response.sendRedirect("buy_now.jsp?product_id="+product_id);
				 
			}
			else
			{
				String mssg="Your Login Are Incorrect.Try it correctly";
				response.sendRedirect("LOG_in.jsp?Message="+mssg);
				
			}
	}
	}


