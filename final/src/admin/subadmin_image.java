package admin;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Db;

@WebServlet("/subadmin_image")
public class subadmin_image extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
					
			
			String email=request.getParameter("id");
			System.out.println("admin email"+email);
					
					String sql="Select IMAGE from sub_admin_info where EMAIL_ID=?";
					Connection con=Db.Condb();
					   PreparedStatement ps=con.prepareStatement(sql);
				
					   ps.setString(1,email);
					   
					   ResultSet rs=ps.executeQuery();
					   byte[] b=null;
					   if(rs.next())
					   {
						   Blob name=rs.getBlob("IMAGE");
						    b=name.getBytes(1,(int)name.length());
					   }
				 ServletOutputStream out=response.getOutputStream();
						   out.write(b);
						   out.flush();
					   
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			
			}

	
}
