package retailerServ;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Color_Quantity_bean;
import model.Color_quan_Modeldb;


@WebServlet("/Update_Quantity1")
public class Update_Quantity1 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int PRODUCT_ID=Integer.parseInt(request.getParameter("PRODUCT_ID"));
		String COLOR=request.getParameter("COLOR");
		System.out.println("color " +COLOR);
		String QUANTITY=request.getParameter("QUANTITY");
		System.out.println("QUANTITY " +QUANTITY);
		
		Color_Quantity_bean ob=new Color_Quantity_bean(PRODUCT_ID,COLOR,QUANTITY);
		
		int i=Color_quan_Modeldb.update(ob);
		
		 if(i>0)
		 {
				response.sendRedirect("show_product.jsp");
		 }
		 else
		 {
			 String msg="";
			 response.sendRedirect("edit.jsp?msg="+msg);
		 }
	}

}
