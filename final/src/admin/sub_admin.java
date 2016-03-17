package admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import db.Db;




@WebServlet("/sub_admin")
public class sub_admin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String USER_NAME=request.getParameter("name");
			System.out.println("USER_NAME"+USER_NAME);
			String Edit = null;
			try {
				Edit = request.getParameter("check1");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String Delete1 = null;
			try {
				Delete1 = request.getParameter("check2");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println(Edit+"   "+Delete1);
			
			Connection con44=Db.Condb();
			String sql44="select USER_NAME from sub_admin_power where USER_NAME=?";
			PreparedStatement ps44=con44.prepareStatement(sql44);
			ps44.setString(1, USER_NAME);
			ResultSet rs44=ps44.executeQuery();
			if(rs44.next()){
				
				String username=rs44.getString("USER_NAME");
				System.out.println("username"+username);
				
				if(username.equals(USER_NAME)){
		
				String sql55="Delete  from sub_admin_power where USER_NAME=?";
		        PreparedStatement ps55=con44.prepareStatement(sql55);
		        ps55.setString(1, USER_NAME);
				ps55.executeUpdate();
				
				}
				
			
	
			
			
			if(Edit!=null && Delete1!=null)
			{
                 Connection con=null;
                 con=Db.Condb();
				String sql="insert into sub_admin_power(USER_NAME, Edit, Delete1)values(?,?,?)";
				
				try {
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,USER_NAME);
					ps.setString(2,"yes");
					ps.setString(3,"yes");
					
					ps.executeUpdate();
					String msg=("successful");
					response.sendRedirect("Admin x.jsp?msg"+msg);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(Edit!=null && Delete1==null)
			{
				
				
				 Connection con=null;
                 con=Db.Condb();
				String sql="insert into sub_admin_power(USER_NAME, Edit, Delete1)values(?,?,?)";
				
				try {
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,USER_NAME);
					ps.setString(2,"yes");
					ps.setString(3,"no");
					
					ps.executeUpdate();
					String msg=("successful");
					response.sendRedirect("Admin x.jsp?msg"+msg);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			
			}
			if(Edit==null && Delete1!=null)
			{
			
				 Connection con=null;
                 con=Db.Condb();
				String sql="insert into sub_admin_power(USER_NAME, Edit, Delete1)values(?,?,?)";
				
				try {
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,USER_NAME);
					ps.setString(2,"no");
					ps.setString(3,"yes");
					
					ps.executeUpdate();
					String msg=("successful");
					response.sendRedirect("Admin x.jsp?msg="+msg);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			
			}
			if(Edit==null && Delete1==null)
			{
				
				
				 Connection con=null;
                 con=Db.Condb();
				String sql="insert into sub_admin_power(USER_NAME, Edit, Delete1)values(?,?,?)";
				
				try {
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,USER_NAME);
					ps.setString(2,"no");
					ps.setString(3,"no");
					
					ps.executeUpdate();
					String msg=("successful");
					response.sendRedirect("Admin x.jsp?msg="+msg);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
				
			}
			
}
				
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		/*System.out.println("USER_NAME"+USER_NAME+"Edit"+Edit+"Delete"+Delete1);
		sub_admin_bean ob=new sub_admin_bean(USER_NAME, Edit, Delete1);
		
		String S=null;
		int i=0;
		String[] str = request.getParameterValues("str");
		for(i=0;i<str.length;i++){
			S=str[i];
			
			if(i==1)
			if(S.equals("Edit"))
			{
				int i1=sub_admin_modeldb.insert1(ob);
			}
		}
		
		if(i==2)
			if(S.equals("Delete1"))
			{
				int i2=sub_admin_modeldb.update(ob);
			}*/

