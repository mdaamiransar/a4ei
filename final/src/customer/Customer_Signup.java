package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Customer_signup_bean;
import model.Customer_Signup_Modeldb;


@WebServlet("/Customer_Signup")
public class Customer_Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String CUSTOMER_ID=request.getParameter("CUSTOMER_ID");
		String TITLE=request.getParameter("TITLE");
		String FIRST_NAME=request.getParameter("FIRST_NAME");
		String LAST_NAME=request.getParameter("LAST_NAME");
		String USER_NAME=request.getParameter("USER_NAME");
		String PASSWORD=request.getParameter("PASSWORD");
		
		String EMAIL=request.getParameter("EMAIL");
		String PHONE=request.getParameter("PHONE");
		String ADDRESS=request.getParameter("ADDRESS");
		
		
		Customer_signup_bean ob=new Customer_signup_bean(CUSTOMER_ID, TITLE, FIRST_NAME, LAST_NAME, USER_NAME, PASSWORD, EMAIL, PHONE, ADDRESS);
	
	    int i=Customer_Signup_Modeldb.insert(ob);
	    
	    if(i>0)
	    {
	    	String error="registeration done successfully";
			response.sendRedirect("index2.jsp?error="+error+"&email"+EMAIL+"&username"+USER_NAME);
	    }
		else
		{
			String error="Insertion error";
			response.sendRedirect("Customer_Signup.jsp?error="+error);
		}
	
	}

}
