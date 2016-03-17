package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.deactivate_bean;
import cart.Dao_Cart;




@WebServlet("/deactivate")
public class deactivate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String EMAIL=request.getParameter("EMAIL");
		
		System.out.println(EMAIL);
		
		deactivate_bean ob=new deactivate_bean(EMAIL);
	
		int m=Dao_Cart.Delete(ob);
		
		if(m>=0)
		 {
				response.sendRedirect("deactivate.jsp");
		 }
		 else
		 {
			 String msg="";
			 response.sendRedirect("deactivate.jsp?msg="+msg);
		 }
		
		
		
		
		
	}

}
