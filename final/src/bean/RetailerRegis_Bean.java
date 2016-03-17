package bean;

import java.io.Serializable;


	public class RetailerRegis_Bean {
		
		private String REGISTRATION_ID;
		private String FIRST_NAME;
		private String LAST_NAME;
		private String ADDRESS;
		private String PIN;
		private String CONTACT_NUMBER;
		private String EMAIL_ADDRESS;
		private String YOUR_MAIN_SELLING_CATEGORY;
		private String USER_NAME;
		private String CREATE_PASSWORD;
		private String RETYPE_PASSWORD;
		public RetailerRegis_Bean(String rEGISTRATION_ID, String fIRST_NAME, String lAST_NAME, String aDDRESS,
				String pIN, String cONTACT_NUMBER, String eMAIL_ADDRESS, String yOUR_MAIN_SELLING_CATEGORY,
				String uSER_NAME, String cREATE_PASSWORD, String rETYPE_PASSWORD) {
			super();
			REGISTRATION_ID = rEGISTRATION_ID;
			FIRST_NAME = fIRST_NAME;
			LAST_NAME = lAST_NAME;
			ADDRESS = aDDRESS;
			PIN = pIN;
			CONTACT_NUMBER = cONTACT_NUMBER;
			EMAIL_ADDRESS = eMAIL_ADDRESS;
			YOUR_MAIN_SELLING_CATEGORY = yOUR_MAIN_SELLING_CATEGORY;
			USER_NAME = uSER_NAME;
			CREATE_PASSWORD = cREATE_PASSWORD;
			RETYPE_PASSWORD = rETYPE_PASSWORD;
		}
		public String getREGISTRATION_ID() {
			return REGISTRATION_ID;
		}
		public void setREGISTRATION_ID(String rEGISTRATION_ID) {
			REGISTRATION_ID = rEGISTRATION_ID;
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
		public String getADDRESS() {
			return ADDRESS;
		}
		public void setADDRESS(String aDDRESS) {
			ADDRESS = aDDRESS;
		}
		public String getPIN() {
			return PIN;
		}
		public void setPIN(String pIN) {
			PIN = pIN;
		}
		public String getCONTACT_NUMBER() {
			return CONTACT_NUMBER;
		}
		public void setCONTACT_NUMBER(String cONTACT_NUMBER) {
			CONTACT_NUMBER = cONTACT_NUMBER;
		}
		public String getEMAIL_ADDRESS() {
			return EMAIL_ADDRESS;
		}
		public void setEMAIL_ADDRESS(String eMAIL_ADDRESS) {
			EMAIL_ADDRESS = eMAIL_ADDRESS;
		}
		public String getYOUR_MAIN_SELLING_CATEGORY() {
			return YOUR_MAIN_SELLING_CATEGORY;
		}
		public void setYOUR_MAIN_SELLING_CATEGORY(String yOUR_MAIN_SELLING_CATEGORY) {
			YOUR_MAIN_SELLING_CATEGORY = yOUR_MAIN_SELLING_CATEGORY;
		}
		public String getUSER_NAME() {
			return USER_NAME;
		}
		public void setUSER_NAME(String uSER_NAME) {
			USER_NAME = uSER_NAME;
		}
		public String getCREATE_PASSWORD() {
			return CREATE_PASSWORD;
		}
		public void setCREATE_PASSWORD(String cREATE_PASSWORD) {
			CREATE_PASSWORD = cREATE_PASSWORD;
		}
		public String getRETYPE_PASSWORD() {
			return RETYPE_PASSWORD;
		}
		public void setRETYPE_PASSWORD(String rETYPE_PASSWORD) {
			RETYPE_PASSWORD = rETYPE_PASSWORD;
		}
	}