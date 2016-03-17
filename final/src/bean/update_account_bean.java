package bean;

public class update_account_bean {

	private String EMAIL;
	private String PHONE;
	
	public update_account_bean(String eMAIL, String pHONE) {
		
		EMAIL = eMAIL;
		PHONE = pHONE;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getPHONE() {
		return PHONE;
	}
	public void setPHONE(String pHONE) {
		PHONE = pHONE;
	}
	
	
	
	
	
}
