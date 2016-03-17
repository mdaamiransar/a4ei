package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Order_status_bean;
import model.Order_Status_modeldb;


@WebServlet("/Order_status")
public class Order_status extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String ORDER_STATUS_NAME=request.getParameter("ORDER_STATUS_NAME");
		
		Order_status_bean ob=new Order_status_bean(ORDER_STATUS_NAME);
		
		int i=Order_Status_modeldb.insert(ob);
		
       if(i>0)
			
			response.sendRedirect("insert.jsp");
		else
		{
			String error="Insertion error";
			response.sendRedirect("insert.jsp?error="+error);
		}
	}

}
