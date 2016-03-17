package bean;

import java.io.InputStream;

public class sub_adminRegisBean {
	
		
		private String FIRST_NAME;
		private String LAST_NAME;
		private String EMAIL_ID;
		private String USER_NAME;
		private String PASSWORD;
		private String CONFIRM_PASSWORD;
		private InputStream IMAGE;
		public sub_adminRegisBean(String fIRST_NAME, String lAST_NAME, String eMAIL_ID, String uSER_NAME,
				String pASSWORD, String cONFIRM_PASSWORD, InputStream iMAGE) {
			
			FIRST_NAME = fIRST_NAME;
			LAST_NAME = lAST_NAME;
			EMAIL_ID = eMAIL_ID;
			USER_NAME = uSER_NAME;
			PASSWORD = pASSWORD;
			CONFIRM_PASSWORD = cONFIRM_PASSWORD;
			IMAGE = iMAGE;
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
		public String getEMAIL_ID() {
			return EMAIL_ID;
		}
		public void setEMAIL_ID(String eMAIL_ID) {
			EMAIL_ID = eMAIL_ID;
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
		public String getCONFIRM_PASSWORD() {
			return CONFIRM_PASSWORD;
		}
		public void setCONFIRM_PASSWORD(String cONFIRM_PASSWORD) {
			CONFIRM_PASSWORD = cONFIRM_PASSWORD;
		}
		public InputStream getIMAGE() {
			return IMAGE;
		}
		public void setIMAGE(InputStream iMAGE) {
			IMAGE = iMAGE;
		}
		
}