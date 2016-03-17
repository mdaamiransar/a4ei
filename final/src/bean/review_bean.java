package bean;

public class review_bean {

	private String PRODUCT_NAME;
	private String EMAIL;
	private String RATING;
	private String REVIEW;
	private String DATE;
	
	public review_bean(String pRODUCT_NAME, String eMAIL, String rATING, String rEVIEW, String dATE) {
		super();
		PRODUCT_NAME = pRODUCT_NAME;
		EMAIL = eMAIL;
		RATING = rATING;
		REVIEW = rEVIEW;
		DATE = dATE;
	}

	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}

	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public String getRATING() {
		return RATING;
	}

	public void setRATING(String rATING) {
		RATING = rATING;
	}

	public String getREVIEW() {
		return REVIEW;
	}

	public void setREVIEW(String rEVIEW) {
		REVIEW = rEVIEW;
	}

	public String getDATE() {
		return DATE;
	}

	public void setDATE(String dATE) {
		DATE = dATE;
	}
	
	
	
}
