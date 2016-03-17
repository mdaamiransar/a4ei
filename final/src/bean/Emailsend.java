package bean;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Emailsend {
	
	public static void SendEmail(String Recipient,String Subject,String Content){
		
		final String user="sstlfriends9@gmail.com";
		final String password="sehrish_2015";
		
		Properties prop=new Properties();
		
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.socketFactory.port", "465");
	    prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	    prop.put("mail.smtp.auth", "true");
	    prop.put("mail.smtp.port", "465");
	    
	    Session ses=Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
	    	  protected PasswordAuthentication getPasswordAuthentication() {
	    		   return new PasswordAuthentication(user,password);
	    		   }
	    		});
	    
	    try {
			Message msg= new MimeMessage(ses);
			msg.setFrom(new InternetAddress(user));
			msg.setRecipients(Message.RecipientType.TO, 
			InternetAddress.parse(Recipient));
			msg.setSubject(Subject);
			msg.setText(Content);
			
			Transport.send(msg);
			System.out.println("Done");
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
