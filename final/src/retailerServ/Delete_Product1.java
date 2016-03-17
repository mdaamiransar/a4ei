package retailerServ;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product_bean;
import model.Product_Modeldb;


@WebServlet("/Delete_Product1")
public class Delete_Product1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int PRODUCT_ID=Integer.parseInt("PRODUCT_ID");
		//String PRODUCT_UPDATED=request.getParameter("PRODUCT_UPDATED");
		
		Product_bean ob=new Product_bean(PRODUCT_ID);
		
		int i=Product_Modeldb.delete(ob);
        if(i>0)
			
			response.sendRedirect("show_product.jsp");
		else
		{
			String error="Insertion error";
			response.sendRedirect("show_product.jsp?error="+error);
		}
	}

}
