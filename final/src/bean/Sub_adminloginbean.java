package bean;

public class Sub_adminloginbean {
	private String USER_NAME;
	private String PASSWORD;
	public Sub_adminloginbean(String uSER_NAME, String pASSWORD) {
		super();
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