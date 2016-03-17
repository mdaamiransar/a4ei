package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.SubCategory_bean;
import model.SubCategory_Modeldb;




@WebServlet("/sub_category")
public class Sub_Category extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String CATEGORY_ID=request.getParameter("CATEGORY_ID");
			String SUBCATEGORY_ID=request.getParameter("SUBCATEGORY_ID");
			String SUBCATEGORY_NAME=request.getParameter("subcategory_name");
			String SUBCATEGORY_DATE=request.getParameter("SUBCATEGORY_DATE");
			
			SubCategory_bean ob=new SubCategory_bean(CATEGORY_ID,SUBCATEGORY_ID,SUBCATEGORY_NAME,SUBCATEGORY_DATE);
			int i=SubCategory_Modeldb.insert(ob);
			if(i>0)
			{
				String error="Insert successfully";
				response.sendRedirect("SubCategory1.jsp?error="+error);
			}
			else
			{
				String error="Insertion error";
				response.sendRedirect("SubCategory1.jsp?error="+error);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		}
	
	

}
