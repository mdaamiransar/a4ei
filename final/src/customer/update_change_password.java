package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Personal_Info_bean;
import bean.update_change_password_bean;
import cart.Dao_Cart;



@WebServlet("/update_change_password")
public class update_change_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String PASSWORD=request.getParameter("PASSWORD");
		String EMAIL=request.getParameter("EMAIL");
		System.out.println(PASSWORD+EMAIL);
		
		update_change_password_bean ob=new update_change_password_bean(PASSWORD, EMAIL);
		
		int j=Dao_Cart.Update(ob);
		
		if(j>=0)
		 {
				response.sendRedirect("change_password.jsp");
		 }
		 else
		 {
			 String msg="";
			 response.sendRedirect("change_password.jsp?msg="+msg);
		 }
		
		
		
		
		
	}

}
