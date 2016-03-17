package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.sql.*;
import db.Db;

@WebServlet("/Update_cat")
public class Update_cat extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cat_id=request.getParameter("CATEGORY_ID");
		String cat_name=request.getParameter("CATEGORY_NAME");
		int i=0;
		Connection con=null;
		con=Db.Condb();
		String sql="update category set CATEGORY_NAME=? where CATEGORY_ID=?";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, cat_name);
			ps.setString(2, cat_id);
			i=ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(i>0){
			
			response.sendRedirect("Listallcategory.jsp");
		}
	}

}
