

package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Personal_Info_bean;
import cart.Dao_Cart;



@WebServlet("/personal_info")
public class personal_info extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String FIRST_NAME=request.getParameter("FIRST_NAME");
		String LAST_NAME=request.getParameter("LAST_NAME");
		String EMAIL=request.getParameter("EMAIL");
		System.out.println(FIRST_NAME+LAST_NAME+EMAIL);
		
		Personal_Info_bean ob=new Personal_Info_bean(FIRST_NAME, LAST_NAME, EMAIL);
		
		int i=Dao_Cart.Update(ob);
		
		if(i>=0)
		 {
				response.sendRedirect("personal_info.jsp");
		 }
		 else
		 {
			 String msg="";
			 response.sendRedirect("personal_info.jsp?msg="+msg);
		 }
	}

}
