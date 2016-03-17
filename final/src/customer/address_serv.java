package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import bean.Personal_Info_bean;
import bean.address_bean;
import cart.Dao_Cart;


@WebServlet("/address_serv")
public class address_serv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ADDRESS=request.getParameter("ADDRESS");
		String EMAIL=request.getParameter("EMAIL");
		System.out.println(ADDRESS+EMAIL);
		
		address_bean ob=new address_bean(ADDRESS, EMAIL);
		
		int j=Dao_Cart.Update(ob);
		
		if(j>=0)
		 {
				response.sendRedirect("address.jsp");
		 }
		 else
		 {
			 String msg="";
			 response.sendRedirect("address.jsp?msg="+msg);
		 }
		
	
	}


}
