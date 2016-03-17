package admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category_bean;
import model.Category_Modeldb;



@WebServlet("/category")
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String CATEGORY_ID=request.getParameter("CATEGORY_ID");
			String CATEGORY_NAME=request.getParameter("category_name");
			String CATEGORY_DATE=request.getParameter("CATEGORY_DATE");
			
			Category_bean ob=new Category_bean(CATEGORY_ID, CATEGORY_NAME, CATEGORY_DATE);
			
			int i=Category_Modeldb.insert(ob);
			
			if(i>0)
			{
				String error="Insert successfully";
				response.sendRedirect("Category1.jsp?error="+error);
			}
			else
			{
				String error="Insertion error";
				response.sendRedirect("Category1.jsp?error="+error);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		}

	}


