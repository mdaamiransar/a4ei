package retailerServ;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product_bean;
import model.Product_Modeldb;


@WebServlet("/Product1")
public class Product1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String CATEGORY_ID=request.getParameter("category");
	
	String SUBCATEGORY_ID=request.getParameter("subcategory");
	
	String BRAND_ID =request.getParameter("brand");
	String PRODUCT_NAME=request.getParameter("PRODUCT_NAME");
	String SHORT_DESCRIPTION=request.getParameter("SHORT_DESCRIPTION");
	String DETAILED_DESCRIPTION=request.getParameter("DETAILED_DESCRIPTION");
	String PRODUCT_KEYWORDS=request.getParameter("PRODUCT_KEYWORDS");
	/*String SUPPLIER_ID=request.getParameter("SUPPLIER_ID");*/
	
	String COMPANY_NAME=request.getParameter("COMPANY_NAME");
	
	
	double SALES_PRICE=Double.parseDouble(request.getParameter("SALES_PRICE"));
	
	double MSRP=Double.parseDouble(request.getParameter("MSRP"));
	String DISCOUNTS=request.getParameter("DISCOUNTS");
	String WEIGHT=request.getParameter("WEIGHT");
	
	String PRODUCT_STATUS=request.getParameter("PRODUCT_STATUS");
	/*Part image=request.getPart("IMAGE");
	InputStream in=image.getInputStream();*/
	String CASH_ON_DELIVERY=request.getParameter("CASH_ON_DELIVERY");
	String WARRENTY=request.getParameter("WARRENTY");
	String SHIPPING_COST=request.getParameter("SHIPPING_COST");
	String REPLACEMENT_WARRENTY=request.getParameter("REPLACEMENT_WARRENTY");
	String PRODUCT_UPDATED=request.getParameter("PRODUCT_UPDATED");
	
	Product_bean ob= new Product_bean(CATEGORY_ID, SUBCATEGORY_ID, BRAND_ID, PRODUCT_NAME, SHORT_DESCRIPTION, DETAILED_DESCRIPTION, PRODUCT_KEYWORDS, COMPANY_NAME, SALES_PRICE, MSRP, DISCOUNTS, WEIGHT, PRODUCT_STATUS, CASH_ON_DELIVERY, WARRENTY, SHIPPING_COST, REPLACEMENT_WARRENTY, PRODUCT_UPDATED);
	int i=Product_Modeldb.insert(ob);
	
	if(i>0)
		response.sendRedirect("Product.jsp");
	else
	{
		String error="Insertion error";
		response.sendRedirect("Product.jsp?error="+error);
	}
}

}