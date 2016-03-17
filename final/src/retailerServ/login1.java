package retailerServ;

import java.io.IOException;


import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.modelsign1;
import db.Db;
import bean.login_Bean1;


@WebServlet("/login1")
public class login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*String username="";
    String password="";
    
    public void init(ServletConfig config) throws ServletException {
		username=config.getInitParameter("username");
		password=config.getInitParameter("password");
	}*/

	public void init(ServletConfig config) throws ServletException{
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String USER_NAME = request.getParameter("COMPANY_NAME");
		String CREATE_PASSWORD = request.getParameter("CREATE_PASSWORD");
		login_Bean1 ob=new login_Bean1(USER_NAME, CREATE_PASSWORD);
		
		int i=model.modelsign1.get_First_name(ob);
		if(i==1)
		{
			HttpSession sees=request.getSession();
			sees.setAttribute("COMPANY_NAME", USER_NAME);
			response.sendRedirect("Dashbord.jsp");
		}
		else{
			String alert="wrong USER_NAME or CREATE_PASSWORD.Please try again";
			response.sendRedirect("retailer sign_in.jsp?Message="+alert);
		}
		
	}

}
