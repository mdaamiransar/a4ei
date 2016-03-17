package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Brand_bean;
import model.Brand_Modeldb;


@WebServlet("/Brand")
public class Brand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String CATEGORY_ID=request.getParameter("CATEGORY_ID");
			
			String SUBCATEGORY_ID=request.getParameter("subcategory");
			String BRAND_ID=request.getParameter("BRAND_ID");
			String BRAND_NAME=request.getParameter("BRAND_NAME");
			Brand_bean ob= new Brand_bean(CATEGORY_ID,SUBCATEGORY_ID,BRAND_ID,BRAND_NAME);
			
			int i=Brand_Modeldb.insert(ob);
			if(i>0)
			{
				String error="Insert successfully";
				response.sendRedirect("Brand1.jsp?error="+error);
			}
			else
			{
				String error="Insertion error";
				response.sendRedirect("Brand1.jsp?error="+error);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
