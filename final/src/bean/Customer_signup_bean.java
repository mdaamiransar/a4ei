package bean;

public class Customer_signup_bean {
	
	private String CUSTOMER_ID;
	private String TITLE;
	private String FIRST_NAME;
	private String LAST_NAME;
	private String USER_NAME;
	private String PASSWORD;
	
	private String EMAIL;
	private String PHONE;
	private String ADDRESS;
	
	public Customer_signup_bean(String cUSTOMER_ID, String tITLE, String fIRST_NAME, String lAST_NAME, String uSER_NAME,
			String pASSWORD, String eMAIL, String pHONE, String aDDRESS) {

		CUSTOMER_ID = cUSTOMER_ID;
		TITLE = tITLE;
		FIRST_NAME = fIRST_NAME;
		LAST_NAME = lAST_NAME;
		USER_NAME = uSER_NAME;
		PASSWORD = pASSWORD;
		
		EMAIL = eMAIL;
		PHONE = pHONE;
		ADDRESS = aDDRESS;
	}

	public String getCUSTOMER_ID() {
		return CUSTOMER_ID;
	}

	public void setCUSTOMER_ID(String cUSTOMER_ID) {
		CUSTOMER_ID = cUSTOMER_ID;
	}

	public String getTITLE() {
		return TITLE;
	}

	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}

	public String getFIRST_NAME() {
		return FIRST_NAME;
	}

	public void setFIRST_NAME(String fIRST_NAME) {
		FIRST_NAME = fIRST_NAME;
	}

	public String getLAST_NAME() {
		return LAST_NAME;
	}

	public void setLAST_NAME(String lAST_NAME) {
		LAST_NAME = lAST_NAME;
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

	public String getADDRESS() {
		return ADDRESS;
	}

	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	
	
	

}
