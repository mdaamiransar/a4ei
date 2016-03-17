package bean;

public class AdminLogin_bean {
	
	private String USER_NAME;
	private String PASSWORD;
	//private String EMAIL_ID;
	public AdminLogin_bean(String uSER_NAME, String pASSWORD) {
		
		USER_NAME = uSER_NAME;
		PASSWORD = pASSWORD;
		
	}

	public String getUSER_NAME() {
		return USER_NAME;
	}

	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}

		
	
}
