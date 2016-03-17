package cart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;

@WebServlet("/remove")
public class remove extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				int PRODUCT_ID=Integer.parseInt(request.getParameter("product_id"));
				//String PRODUCT_UPDATED=request.getParameter("PRODUCT_UPDATED");
				HttpSession session=request.getSession();
				ArrayList<Shopping_Cart> arr1=(ArrayList<Shopping_Cart>)session.getAttribute("cart_list"); 
			    Shopping_Cart b=null;
			     for(int i=0;i<arr1.size();i++) {  
			  	   b=(Shopping_Cart)arr1.get(i);
			  	   if(PRODUCT_ID==b.getProduct_id())
			  	   {
			  		   arr1.remove(i);
			  		  
			  	   }
			  	 request.setAttribute("cart_list",arr1);
				RequestDispatcher rd=request.getRequestDispatcher("view_session_cart.jsp");
				rd.forward(request,response);	
			}

	
	}
}


