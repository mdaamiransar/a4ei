package cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.*;


@WebServlet("/remove_buy")
public class remove_buy extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int PRODUCT_ID=Integer.parseInt(request.getParameter("product_id"));
			//String PRODUCT_UPDATED=request.getParameter("PRODUCT_UPDATED");
			HttpSession session=request.getSession();
			String email=(String)session.getAttribute("email");
			Connection con=Db.Condb();
			String sql="delete from registered_cart where email=? and PRODUCT_ID=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setInt(2,PRODUCT_ID);
			int i=ps.executeUpdate();
			if(i==1)
			{
			RequestDispatcher rd=request.getRequestDispatcher("view_Registered_cart.jsp");
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
	


