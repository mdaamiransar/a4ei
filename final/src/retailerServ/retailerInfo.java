package retailerServ;

import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import bean.retailer_info_bean;

@WebServlet("/retailerInfo")
@MultipartConfig(maxFileSize=1024*1024*16)
public class retailerInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			
			String COMPANY_NAME =request.getParameter("COMPANY_NAME");
			String COMPANY_ADDRESS =request.getParameter("COMPANY_ADDRESS");
			String PAN_NO =request.getParameter("PAN_NO");
			Part ADDRESS_PROOF=request.getPart("ADDRESS_PROOF");
			InputStream AD=ADDRESS_PROOF.getInputStream();
			String BANK_NAME =request.getParameter("BANK_NAME");
			String ACCOUNT_NO =request.getParameter("ACCOUNT_NO");
			String NAME_ON_ACCOUNT =request.getParameter("NAME_ON_ACCOUNT");
			String IFSC_CODE =request.getParameter("IFSC_CODE");
			String TIN_NO =request.getParameter("TIN_NO");
			
			
			
			retailer_info_bean ob=new retailer_info_bean( COMPANY_NAME, COMPANY_ADDRESS, PAN_NO, AD, BANK_NAME, ACCOUNT_NO, NAME_ON_ACCOUNT, IFSC_CODE, TIN_NO);
			int i=model.Modelinfo.insert(ob);
            if(i>0)
				
				response.sendRedirect("retailer sign_in.jsp");
			else
			{
				String error="Insertion error";
				response.sendRedirect("retailer info.jsp?error="+error);
			}
		} 
		
		
	}
	