package customer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.feedback_bean;
import cart.Dao_Cart;


@WebServlet("/feedback")
public class feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String product_name=request.getParameter("product_name");
		String email=request.getParameter("email");
		String rating=request.getParameter("rating");
		String review=request.getParameter("review");
		String date=request.getParameter("DATE");
		feedback_bean ob= new feedback_bean(product_name, email, rating, review, date);
	
		int i=Dao_Cart.insert_feedback(ob);
		System.out.println("model i"+i);
	if(i>0)
	{
		
		String error="review submit successfully";
		response.sendRedirect("index2.jsp?error="+error);
	}
	
	}

}
