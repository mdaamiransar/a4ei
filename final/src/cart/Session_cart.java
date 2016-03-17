package cart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Session_cart")
public class Session_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int product_id=(Integer)request.getAttribute("product_id");
		String shor_des=(String)request.getAttribute("shor_des");
		String seller=(String)request.getAttribute("seller");
		String delivery_date=(String)request.getAttribute("delivery_date");
		String price1=(String)request.getAttribute("price");
		double price=Double.parseDouble(price1);
		double total_price=Double.parseDouble(price1);
		Double shipping_charge=(Double)request.getAttribute("shipping_charge");
		//double shipping_charge=Double.parseDouble(shipping_charge1);*/
		//double shipping_charge=200;
		double subtotal=shipping_charge+total_price;
		int quantity=1;
		
		String product_name=(String)request.getAttribute("name");
		
		HttpSession ss=request.getSession();
		ArrayList<Shopping_Cart> Show_cart=(ArrayList<Shopping_Cart>)ss.getAttribute("cart_list");

		if(Show_cart==null)
		{
			Show_cart=new ArrayList<Shopping_Cart>();
			Shopping_Cart bn=new Shopping_Cart(product_id, shor_des, seller, shipping_charge, delivery_date, price, total_price, product_name, quantity, subtotal);
			Show_cart.add(bn);
			request.setAttribute("cart_list",Show_cart);
			RequestDispatcher rd=request.getRequestDispatcher("view_session_cart.jsp");
			rd.forward(request,response);
			
		}
		else
		{
			int flag=0;
			Iterator<Shopping_Cart> it=Show_cart.iterator();
			while(it.hasNext())
			{
				Shopping_Cart ob=it.next();
				if(product_id==ob.getProduct_id())
				{
					flag=1;
					break;
				}
			}
			if(flag==0)
			{
				Shopping_Cart bn=new Shopping_Cart(product_id, shor_des, seller, shipping_charge, delivery_date, price, total_price, product_name, quantity, subtotal);
				Show_cart.add(bn);
			}
			
			request.setAttribute("cart_list",Show_cart);
			RequestDispatcher rd=request.getRequestDispatcher("view_session_cart.jsp");
			rd.forward(request,response);	
		}
		
		
	}

}
