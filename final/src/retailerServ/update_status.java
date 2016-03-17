package retailerServ;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.update_statusbean;
import model.order_statusModel;




@WebServlet("/update_status")
public class update_status extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			String ORDER_STATUS_ID=request.getParameter("ORDER_STATUS");
			System.out.println("ORDER_STATUS_ID"+ORDER_STATUS_ID);
			
			int ORDER_DETAILS_ID=Integer.parseInt(request.getParameter("order_id"));
			System.out.println("ORDER_DETAILS_ID"+ORDER_DETAILS_ID);
			
			update_statusbean ob=new update_statusbean(ORDER_STATUS_ID,ORDER_DETAILS_ID);
			try {
			 int i=order_statusModel.update(ob);
			 if(i>=0)
			 {
				System.out.println("aaaa");
				response.sendRedirect("list_all_orders.jsp");
			 }
			 else
			 {
				 String msg="error";
				 response.sendRedirect("list_all_orders.jsp?msg="+msg);
			 }
		} catch (NumberFormatException e) {
			
			e.printStackTrace();
		}
		}


	}
