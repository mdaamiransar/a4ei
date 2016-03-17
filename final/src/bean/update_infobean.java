package bean;


public class update_infobean {
	private int REGISTRATION_ID;
	private String COMPANY_NAME;
	private String COMPANY_ADDRESS;
	private String PAN_NO;
	private String BANK_NAME;
	private String ACCOUNT_NO;
	private String NAME_ON_ACCOUNT;
	private String IFSC_CODE;
	private String TIN_NO;
	public update_infobean(int rEGISTRATION_ID, String cOMPANY_NAME, String cOMPANY_ADDRESS, String pAN_NO,
			String bANK_NAME, String aCCOUNT_NO, String nAME_ON_ACCOUNT, String iFSC_CODE, String tIN_NO) {
		super();
		REGISTRATION_ID = rEGISTRATION_ID;
		COMPANY_NAME = cOMPANY_NAME;
		COMPANY_ADDRESS = cOMPANY_ADDRESS;
		PAN_NO = pAN_NO;
		BANK_NAME = bANK_NAME;
		ACCOUNT_NO = aCCOUNT_NO;
		NAME_ON_ACCOUNT = nAME_ON_ACCOUNT;
		IFSC_CODE = iFSC_CODE;
		TIN_NO = tIN_NO;
	}
	public int getREGISTRATION_ID() {
		return REGISTRATION_ID;
	}
	public void setREGISTRATION_ID(int rEGISTRATION_ID) {
		REGISTRATION_ID = rEGISTRATION_ID;
	}
	public String getCOMPANY_NAME() {
		return COMPANY_NAME;
	}
	public void setCOMPANY_NAME(String cOMPANY_NAME) {
		COMPANY_NAME = cOMPANY_NAME;
	}
	public String getCOMPANY_ADDRESS() {
		return COMPANY_ADDRESS;
	}
	public void setCOMPANY_ADDRESS(String cOMPANY_ADDRESS) {
		COMPANY_ADDRESS = cOMPANY_ADDRESS;
	}
	public String getPAN_NO() {
		return PAN_NO;
	}
	public void setPAN_NO(String pAN_NO) {
		PAN_NO = pAN_NO;
	}
	public String getBANK_NAME() {
		return BANK_NAME;
	}
	public void setBANK_NAME(String bANK_NAME) {
		BANK_NAME = bANK_NAME;
	}
	public String getACCOUNT_NO() {
		return ACCOUNT_NO;
	}
	public void setACCOUNT_NO(String aCCOUNT_NO) {
		ACCOUNT_NO = aCCOUNT_NO;
	}
	public String getNAME_ON_ACCOUNT() {
		return NAME_ON_ACCOUNT;
	}
	public void setNAME_ON_ACCOUNT(String nAME_ON_ACCOUNT) {
		NAME_ON_ACCOUNT = nAME_ON_ACCOUNT;
	}
	public String getIFSC_CODE() {
		return IFSC_CODE;
	}
	public void setIFSC_CODE(String iFSC_CODE) {
		IFSC_CODE = iFSC_CODE;
	}
	public String getTIN_NO() {
		return TIN_NO;
	}
	public void setTIN_NO(String tIN_NO) {
		TIN_NO = tIN_NO;
	}
}