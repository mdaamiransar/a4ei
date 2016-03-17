package retailerServ;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.Color_Quantity;
import bean.Color_Quantity_bean;
import model.Color_quan_Modeldb;


@WebServlet("/Color1")
public class Color1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	   int product_id=Integer.parseInt(request.getParameter("product"));
		Enumeration names=request.getParameterNames();
		
		 String[] name_value=null;
		 Color_Quantity_bean ob=new Color_Quantity_bean();
		 ob.setPRODUCT_ID(product_id);
		 int i=0;
		 int in=0;
		  
		      while(names.hasMoreElements())
		      {
		    	  String name=(String)names.nextElement();
		    	
		    	  name_value=request.getParameterValues(name);

		    	  
		    	  if(name.equals("color1") || name.equals("color2") || name.equals("color3") || name.equals("color4") || name.equals("color5"))
		    	  {
		    		 /*String col=name_value[0];
		    		  boolean s=Color_quan_Modeldb.check_color(col);
		    		  if(s)
		    		  {
		    			  String error=col+" already exist";
		    			  response.sendRedirect("Product.jsp?error="+error);
		    		  }*/
                      ob.setCOLOR(name_value[0]);
		    	  }
		    	 if(name.equals("quantity1") || name.equals("quantity2") || name.equals("quantity3") || name.equals("quantity4") || name.equals("quantity5"))
		    	 {
		    		
			    	ob.setQUANTITY(name_value[0]);
		    	 }
		    	  if(i==2 || i==4 || i==6 || i==8 || i==10 || i==12 )
		    	  {
	
		    		   in=Color_quan_Modeldb.insert(ob);
		    	  }
		    	  i++;
		    	
		      }
		      /*if(in==1)
		      {
		    	  response.sendRedirect("Product.jsp");
		      }

                */
		
		      if(in>0)
					response.sendRedirect("Product.jsp");
				else
				{
					String error="Insertion error";
					response.sendRedirect("Product.jsp?error="+error);
				}  
			   
		

}
}
