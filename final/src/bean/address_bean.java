package bean;

public class address_bean {
	private String ADDRESS;
	private String EMAIL;
	public address_bean(String aDDRESS, String eMAIL) {
		super();
		ADDRESS = aDDRESS;
		EMAIL = eMAIL;
	}
	public String getADDRESS() {
		return ADDRESS;
	}
	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	
	
}
