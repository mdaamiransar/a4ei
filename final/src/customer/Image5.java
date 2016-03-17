package customer;


import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.Db;


@WebServlet("/Image5")
public class Image5 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
Connection con = null;
		
try {
		
			int p_id=Integer.parseInt(request.getParameter("p_id"));
		
			String filename=request.getParameter("filename");
			
		
			  con = Db.Condb();
			
			int j=0,count=0;
			
				
			String sql1="select IMAGE from image where PRODUCT_ID=? and FILE_NAME=?";
			PreparedStatement ps=con.prepareStatement(sql1);
			ps.setInt(1,p_id);
			ps.setString(2,filename);
		    ResultSet rs=ps.executeQuery();
		    byte[] b = null;
		    if(rs.next())
		    {
		    	Blob im=rs.getBlob(1);
		    	b=im.getBytes(1,(int)im.length());	
		    }
		    ServletOutputStream out=response.getOutputStream();
		    out.write(b);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
	}

}
