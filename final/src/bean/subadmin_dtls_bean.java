package bean;

public class subadmin_dtls_bean {


	private String first_Name;
	private String last_Name;
	private String user_Name;
	private String password;
	private String email;
	//private String phone;
	
	public subadmin_dtls_bean(String first_Name, String last_Name, String user_Name, String password, String email
			) {
		
		this.first_Name = first_Name;
		this.last_Name = last_Name;
		this.user_Name = user_Name;
		this.password = password;
		this.email = email;
		
	}
	public String getFirst_Name() {
		return first_Name;
	}
	public void setFirst_Name(String first_Name) {
		this.first_Name = first_Name;
	}
	public String getLast_Name() {
		return last_Name;
	}
	public void setLast_Name(String last_Name) {
		this.last_Name = last_Name;
	}
	public String getUser_Name() {
		return user_Name;
	}
	public void setUser_Name(String user_Name) {
		this.user_Name = user_Name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
	
}
