package bean;

public class Login_bean {

	private String usermail;
	private String password;
	public Login_bean(String usermail, String password) {
		
		this.usermail = usermail;
		this.password = password;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
}
