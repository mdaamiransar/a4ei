package retailerServ;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.update_infobean;
import model.update_infomodel;

@WebServlet("/update_info")
public class update_info extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int REGISTRATION_ID=Integer.parseInt(request.getParameter("REGISTRATION_ID"));
			String COMPANY_NAME=request.getParameter("COMPANY_NAME");
			String COMPANY_ADDRESS=request.getParameter("COMPANY_ADDRESS");
			String PAN_NO=request.getParameter("PAN_NO");
			
			String BANK_NAME=request.getParameter("BANK_NAME");
			String ACCOUNT_NO=request.getParameter("ACCOUNT_NO");
			String NAME_ON_ACCOUNT=request.getParameter("NAME_ON_ACCOUNT");
			String IFSC_CODE=request.getParameter("IFSC_CODE");
			String TIN_NO=request.getParameter("TIN_NO");
			System.out.println(REGISTRATION_ID+COMPANY_NAME+COMPANY_ADDRESS+PAN_NO+BANK_NAME+ACCOUNT_NO+NAME_ON_ACCOUNT+IFSC_CODE+TIN_NO);
			update_infobean ob=new update_infobean(REGISTRATION_ID,COMPANY_NAME, COMPANY_ADDRESS, PAN_NO, BANK_NAME, ACCOUNT_NO, NAME_ON_ACCOUNT, IFSC_CODE, TIN_NO);
			
			 int i=update_infomodel.update(ob);
			 if(i>=0)
			 {
				System.out.println("aaaa");
				response.sendRedirect("Dashbord.jsp");
			 }
			 else
			 {
				 String msg="";
				 response.sendRedirect("Dashbord.jsp?msg="+msg);
			 }
		} catch (NumberFormatException e) {
			
			e.printStackTrace();
		}
	
	}
	}

