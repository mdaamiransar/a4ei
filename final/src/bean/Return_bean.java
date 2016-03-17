package bean;

public class Return_bean {
	
	private int  ORDER_DETAILS_ID;
	private String DETAILED_REASON;
	private String PHONE_NO;
	private String REASON;
	private String BANK_NAME;
	private String ACCOUNT_NUMBER;
	private String IFSC_CODE;
	private int BRANCH_CODE;
	private String NAME;
	private String EMAIL;




	public Return_bean(int oRDER_DETAILS_ID, String dETAILED_REASON, String pHONE_NO, String rEASON, String bANK_NAME,
			String aCCOUNT_NUMBER, String iFSC_CODE, int bRANCH_CODE, String nAME, String eMAIL) {
		
		ORDER_DETAILS_ID = oRDER_DETAILS_ID;
		DETAILED_REASON = dETAILED_REASON;
		PHONE_NO = pHONE_NO;
		REASON = rEASON;
		BANK_NAME = bANK_NAME;
		ACCOUNT_NUMBER = aCCOUNT_NUMBER;
		IFSC_CODE = iFSC_CODE;
		BRANCH_CODE = bRANCH_CODE;
		NAME = nAME;
		EMAIL = eMAIL;
	}





	public String getEMAIL() {
		return EMAIL;
	}





	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}





	public String getPHONE_NO() {
		return PHONE_NO;
	}





	public void setPHONE_NO(String pHONE_NO) {
		PHONE_NO = pHONE_NO;
	}




	public String getDETAILED_REASON() {
		return DETAILED_REASON;
	}





	public void setDETAILED_REASON(String dETAILED_REASON) {
		DETAILED_REASON = dETAILED_REASON;
	}





	public int getORDER_DETAILS_ID() {
		return ORDER_DETAILS_ID;
	}





	public void setORDER_DETAILS_ID(int oRDER_DETAILS_ID) {
		ORDER_DETAILS_ID = oRDER_DETAILS_ID;
	}




	public String getREASON() {
		return REASON;
	}
	public void setREASON(String rEASON) {
		REASON = rEASON;
	}
	public String getBANK_NAME() {
		return BANK_NAME;
	}
	public void setBANK_NAME(String bANK_NAME) {
		BANK_NAME = bANK_NAME;
	}
	public String getACCOUNT_NUMBER() {
		return ACCOUNT_NUMBER;
	}
	public void setACCOUNT_NUMBER(String aCCOUNT_NUMBER) {
		ACCOUNT_NUMBER = aCCOUNT_NUMBER;
	}
	public String getIFSC_CODE() {
		return IFSC_CODE;
	}
	public void setIFSC_CODE(String iFSC_CODE) {
		IFSC_CODE = iFSC_CODE;
	}
	public int getBRANCH_CODE() {
		return BRANCH_CODE;
	}
	public void setBRANCH_CODE(int bRANCH_CODE) {
		BRANCH_CODE = bRANCH_CODE;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}





	public int getCUSTOMER_ID() {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
