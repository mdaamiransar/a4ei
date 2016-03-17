package admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.search_order_bean;
import model.search_order_modeldb;


@WebServlet("/Search_order")
public class Search_order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String from=request.getParameter("from");
		String to=request.getParameter("to");
		
		
		ArrayList<search_order_bean> ar=search_order_modeldb.showorder(from,to);
		request.setAttribute("ar", ar);
		System.out.println("ar1"+ar);
		RequestDispatcher rd=request.getRequestDispatcher("Search Orders.jsp");
		rd.forward(request, response);
	}

}
