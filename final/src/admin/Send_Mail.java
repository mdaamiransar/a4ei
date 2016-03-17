package admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Emailsend;


@WebServlet("/Send_Mail")
public class Send_Mail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out=response.getWriter();
		
		String to=request.getParameter("Recipient");
		String subject=request.getParameter("Subject");
		String msg=request.getParameter("Content");
		
		
		Emailsend.SendEmail(to,subject, msg );
		out.print("message has been sent successfully");
		out.close();
	}

}
