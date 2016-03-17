package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.update_account_bean;
import bean.update_change_password_bean;
import cart.Dao_Cart;



@WebServlet("/update_account")
public class update_account extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Email=request.getParameter("EMAIL");
		String Mobile=request.getParameter("MOBILE");
		System.out.println(Email+Mobile);
		
		update_account_bean ob=new update_account_bean(Email, Mobile);
		
		int k=Dao_Cart.Update(ob);
		
		if(k>=0)
		 {
				response.sendRedirect("update.jsp");
		 }
		 else
		 {
			 String msg="";
			 response.sendRedirect("update.jsp?msg="+msg);
		 }
		
		
		
		
		
		
		
		
		
	}

}
