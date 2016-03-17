package admin;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Return_order_bean;
import model.Return_order_modeldb;


@WebServlet("/ExportToExcel")
public class ExportToExcel extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Return_order_bean> ar=Return_order_modeldb.showReturns();
		
		request.setAttribute("ar", ar);
		
		 RequestDispatcher rd = request.getRequestDispatcher("Export_excel.jsp");
         rd.forward(request, response);
	}

}
