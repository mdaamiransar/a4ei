package cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/session_remove")
@MultipartConfig(maxFileSize=1024*1024*16)
public class session_remove extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		ArrayList<Shopping_Cart> ar=Dao_Cart.remove_show();
		request.setAttribute("product",ar);
		RequestDispatcher rd=request.getRequestDispatcher("view_session_cart.jsp");
		rd.forward(request, response);
		
		
		
		
		
		
		
		
		
	}

}
