package bean;

import java.io.InputStream;
import java.io.Serializable;
import java.sql.Blob;

import javax.servlet.http.Part;

public class retailer_info_bean {
	
	
	
	private String COMPANY_NAME;
	private String COMPANY_ADDRESS;
	private String PAN_NO;
	private InputStream ADDRESS_PROOF;
	private String BANK_NAME;
	private String ACCOUNT_NO;
	private String NAME_ON_ACCOUNT;
	private String IFSC_CODE;
	private String TIN_NO;
	public retailer_info_bean( String cOMPANY_NAME, String cOMPANY_ADDRESS,
			String pAN_NO, InputStream aDDRESS_PROOF, String bANK_NAME, String aCCOUNT_NO, String nAME_ON_ACCOUNT,
			String iFSC_CODE, String tIN_NO) {
		super();
		
		
		COMPANY_NAME = cOMPANY_NAME;
		COMPANY_ADDRESS = cOMPANY_ADDRESS;
		PAN_NO = pAN_NO;
		ADDRESS_PROOF = aDDRESS_PROOF;
		BANK_NAME = bANK_NAME;
		ACCOUNT_NO = aCCOUNT_NO;
		NAME_ON_ACCOUNT = nAME_ON_ACCOUNT;
		IFSC_CODE = iFSC_CODE;
		TIN_NO = tIN_NO;
	
	
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
	public InputStream getADDRESS_PROOF() {
		return ADDRESS_PROOF;
	}
	public void setADDRESS_PROOF(InputStream aDDRESS_PROOF) {
		ADDRESS_PROOF = aDDRESS_PROOF;
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
