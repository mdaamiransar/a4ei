package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Login_bean;
import bean.Return_bean;
import cart.Dao_Cart;
@WebServlet("/Return")
public class Return extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int ORDER_DETAILS_ID=Integer.parseInt(request.getParameter("ORDER_DETAILS_ID"));
		String EMAIL=request.getParameter("EMAIL");
		String DETAILED_RESON=request.getParameter("DETAILED_REASON");
		String PHONE_NO=request.getParameter("PHONE_NO");
		String REASON=request.getParameter("REASON");
		String BANK_NAME=request.getParameter("BANK_NAME");
		String ACCOUNT_NUMBER=request.getParameter("ACCOUNT_NUMBER");
		String IFSC_CODE=request.getParameter("IFSC_CODE");
		int BRANCH_CODE=Integer.parseInt(request.getParameter("BRANCH_CODE"));
		String NAME=request.getParameter("NAME");
		
        Return_bean ob=new Return_bean(ORDER_DETAILS_ID, DETAILED_RESON, PHONE_NO, REASON, BANK_NAME, ACCOUNT_NUMBER, IFSC_CODE, BRANCH_CODE, NAME, EMAIL);

	    int i=Dao_Cart.insert_return(ob);
	    
	    if(i>0)
	    {
	    	String error="return item done successfully";
			response.sendRedirect("return_com.jsp");
	    }
		else
		{
			String error="Insertion error";
			response.sendRedirect("?error="+error);
		}
	}

		
		
	}


