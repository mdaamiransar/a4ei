package admin;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Testing")
public class Testing extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
	
    public void init() throws ServletException {
    	 
    }

    
    public void DisplayServlet() {
        
    }
    
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        	 
            String imageId = request.getParameter("id");
            System.out.println(imageId);
            InputStream sImage;
 
            // Check if ID is supplied to the request.
            if (imageId == null) {
                // Do your thing if the ID is not supplied to the request.
                // Throw an exception, or send 404, or show default/warning image, or just ignore it.
                response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
                return;
            }
 
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping", "root","root");
                stmt = con.prepareStatement("select * from product where Prod_Id=" + imageId);
                rs = stmt.executeQuery();
                if(rs.next()){
                    System.out.println("Inside RS");
                    byte[] bytearray = new byte[1048576];
                    int size=0;
                    sImage = rs.getBinaryStream(12);
                    response.reset();
                    response.setContentType("image/jpeg");
                    while((size = sImage.read(bytearray)) != -1 ){
                        response.getOutputStream().
                        write(bytearray,0,size);
                    }
                }
 
            } catch (Exception e){
                e.printStackTrace();
            }
        }
 

    
    }		
	


