package cart;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Registered_cart")
public class Registered_cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int product_id=(Integer)request.getAttribute("product_id");
		String shor_des=(String)request.getAttribute("shor_des");
		String seller=(String)request.getAttribute("seller");
		Double shipping_charge=(Double)request.getAttribute("shipping_charge");
		//double shipping_charge=Double.parseDouble(shipping_charge1);
		String delivery_date=(String)request.getAttribute("delivery_date");
		String price1=(String)request.getAttribute("price");
		double unit_price=Double.parseDouble(price1);
		double total_price=Double.parseDouble(price1);
		String product_name=(String)request.getAttribute("name");
		double subtotal=shipping_charge+total_price;
		int quantity=1;
		int color_id=(Integer)request.getAttribute("color_id");
		HttpSession ss=request.getSession();
		String email=(String)ss.getAttribute("email");
		if(email!=null)
		{
			boolean status=Dao_Cart.Product_id_Customer(product_id, email);
			int flag=0;
			if(status)
			{
				flag=1;
			}
			int i=0;
			if(flag==0)
			{
				Shopping_Cart bn=new Shopping_Cart(product_id, shor_des, seller, shipping_charge, delivery_date, unit_price, total_price, product_name, quantity, subtotal, email, color_id);
				i=Dao_Cart.Insert_cart(bn);
				System.out.println("bbbbbb");
				
			}
			request.setAttribute("email",email);
			RequestDispatcher rd=request.getRequestDispatcher("view_Registered_cart.jsp");
			rd.forward(request,response);
		}
	}

}
