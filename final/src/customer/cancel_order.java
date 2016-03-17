package customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.Db;


@WebServlet("/cancel_order")
public class cancel_order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
			int ORDER_DETAILS_ID=Integer.parseInt(request.getParameter("ORDER_DETAILS_ID"));
			//String PRODUCT_UPDATED=request.getParameter("PRODUCT_UPDATED");
			System.out.println("xxxxxxxxxxx"+ORDER_DETAILS_ID);
			HttpSession session=request.getSession();
			String email=(String)session.getAttribute("email");
			try {
			Connection con=Db.Condb();
			String sql="delete from order_details where email=? and ORDER_DETAILS_ID=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setInt(2,ORDER_DETAILS_ID);
			int i=ps.executeUpdate();
			if(i==1)
			{
			RequestDispatcher rd=request.getRequestDispatcher("myorder.jsp");
			rd.forward(request,response);	
			}
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

		
	}


