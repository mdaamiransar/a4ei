package cart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("p");
		 int product_id=Integer.parseInt(request.getParameter("product_id"));
		 HttpSession ss1=request.getSession();
		 
		    request.setAttribute("product_id",product_id);
			String shor_des=request.getParameter("shor_des");
			request.setAttribute("shor_des",shor_des);
			String seller=request.getParameter("seller");
			request.setAttribute("seller",seller);
			double shipping_charge=200.99;
			String delivery_date="12/12/2012";
			//String shipping_charge=request.getParameter("shipping_charge");
			request.setAttribute("shipping_charge",shipping_charge);
			//String delivery_date=request.getParameter("delivery_date");
			request.setAttribute("delivery_date",delivery_date);
			
			String price=request.getParameter("price");
			request.setAttribute("price",price);
			String name=request.getParameter("name");
			request.setAttribute("name",name);
			 int color_id=Integer.parseInt(request.getParameter("color_id"));
			 request.setAttribute("color_id",color_id);
			 System.out.println("848erfgerg"+color_id);
			 int quantity=Integer.parseInt(request.getParameter("quantity"));
			 request.setAttribute("quantity",quantity); 
		if(quantity==0)
		{
			response.sendRedirect("singleproduct_quantity.jsp?product_id="+product_id);
		}
			
		else{
			 
			 if(action.equals("buy"))
		{
				 
				
				 
			response.sendRedirect("buy_now.jsp?product_id="+product_id);
			
			
			
			
			
		}
		if(action.equals("cart"))
		{
			
			
		int i=0;
		
		
		
		HttpSession ss=request.getSession();
		String email=(String)ss.getAttribute("email");
		
		if(email!=null)
		{
			System.out.println("aaaaa");
			RequestDispatcher rd=request.getRequestDispatcher("Registered_cart");
			rd.forward(request,response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("Session_cart");
			rd.forward(request,response);
		}
		}}
			 } 
	}
	

