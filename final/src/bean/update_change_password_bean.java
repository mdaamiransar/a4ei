package bean;

public class update_change_password_bean {
	
	private String PASSWORD;
	private String EMAIL;
	
	public update_change_password_bean(String pASSWORD, String eMAIL) {
		
		PASSWORD = pASSWORD;
		EMAIL = eMAIL;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	


}
