package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Color_Modeldb;


@WebServlet("/Color_Quantity")
public class Color_Quantity extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String PRODUCT_ID=request.getParameter("product");
		String COLOR[]=request.getParameterValues("color");
		String QUANTITY[]=request.getParameterValues("quantity");
		
		 PrintWriter pw=response.getWriter();
	        response.setContentType("text/html");
	 
	        String[] COLOR1=request.getParameterValues("color");
	        pw.println("Selected Values...");    
	        for(int i=0;i<COLOR1.length;i++)
	       {
	           pw.println("<li>"+COLOR1[i]+"</li>");
	       }
	       pw.close();
	       
	       String[] QUANTITY1=request.getParameterValues("color");
	        pw.println("Selected Values...");    
	        for(int i=0;i<QUANTITY1.length;i++)
	       {
	           pw.println("<li>"+QUANTITY1[i]+"</li>");
	       }
	       pw.close(); 
	    }
	
		
		/*String c,q;
		for(int i=0;i<COLOR.length && i<QUANTITY.length;i++)
			
			
		{
			c=COLOR[i];
			q=QUANTITY[i];
			
			Color_Quantity_bean ob=new Color_Quantity_bean(PRODUCT_ID,c,q);
			
			int i1=Color_Modeldb.insert(ob);
			if(i1>0)
				response.sendRedirect("Product.jsp");
			else
			{
				String error="Insertion error";
				response.sendRedirect("Product.jsp?error="+error);
			}
		}
	

*/
		}

