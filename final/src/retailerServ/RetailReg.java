package retailerServ;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.*;
import bean.*;

@WebServlet("/RetailReg")
public class RetailReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
try {
	               
			String REGISTRATION_ID =request.getParameter("REGISTRATION_ID");
			String FIRST_NAME =request.getParameter("FIRST_NAME");
			String LAST_NAME =request.getParameter("LAST_NAME");
			String ADDRESS =request.getParameter("ADDRESS");
			String PIN =request.getParameter("PIN");
			String CONTACT_NUMBER=request.getParameter("CONTACT_NUMBER");
			String EMAIL_ADDRESS=request.getParameter("EMAIL_ADDRESS");
			String YOUR_MAIN_SELLING_CATEGORY=request.getParameter("YOUR_MAIN_SELLING_CATEGORY");
			String USER_NAME=request.getParameter("USER_NAME");
			String CREATE_PASSWORD=request.getParameter("CREATE_PASSWORD");
			String RETYPE_PASSWORD=request.getParameter("RETYPE_PASSWORD");
			
			RetailerRegis_Bean ob=new RetailerRegis_Bean(REGISTRATION_ID,FIRST_NAME,LAST_NAME,ADDRESS,PIN,CONTACT_NUMBER,EMAIL_ADDRESS,YOUR_MAIN_SELLING_CATEGORY,USER_NAME,CREATE_PASSWORD,RETYPE_PASSWORD);
			int i=Modelret.insert(ob);
            if(i>0)
				
				response.sendRedirect("retailer_info.jsp");
			else
			{
				String error="Insertion error";
				response.sendRedirect("retailer_regis.jsp?error="+error);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
	
