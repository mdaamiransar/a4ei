package customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Order_Tracking;
import model.Order_Status_modeldb;

@WebServlet("/Track")
public class Track extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email=request.getParameter("email");
		System.out.println("Email isffghdfhdfh"+Email);
		int order_Id=Integer.parseInt(request.getParameter("order_id"));
		System.out.println("Order_Id is"+order_Id);
		
		Order_Tracking obj= new Order_Tracking(Email, order_Id);
		ArrayList<Order_Tracking> j=(ArrayList<Order_Tracking>)Order_Status_modeldb.Track_OrderDetails(obj);
		Iterator<Order_Tracking> it=j.iterator();
		{
			while(it.hasNext())
			{
			Order_Tracking objj=(Order_Tracking)it.next();
			System.out.println("Order_Track "+objj.getStatus_name());
			}
		}
		request.setAttribute("arr", j);
		RequestDispatcher rd=request.getRequestDispatcher("track_order.jsp");
		rd.forward(request, response);
	}

}
