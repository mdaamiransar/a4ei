package bean;

public class Return_order_bean {
	
	private int ORDER_DETAILS_ID;
	private String PRODUCT_NAME;
	private String SUPPLIER_ID;
	private String  REASON;
	private String EMAIL;
	
	

	public Return_order_bean(int oRDER_DETAILS_ID, String pRODUCT_NAME, String sUPPLIER_ID, String rEASON,
			String eMAIL) {
		super();
		ORDER_DETAILS_ID = oRDER_DETAILS_ID;
		PRODUCT_NAME = pRODUCT_NAME;
		SUPPLIER_ID = sUPPLIER_ID;
		REASON = rEASON;
		EMAIL = eMAIL;
	}



	public int getORDER_DETAILS_ID() {
		return ORDER_DETAILS_ID;
	}



	public void setORDER_DETAILS_ID(int oRDER_DETAILS_ID) {
		ORDER_DETAILS_ID = oRDER_DETAILS_ID;
	}



	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}



	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}



	public String getSUPPLIER_ID() {
		return SUPPLIER_ID;
	}



	public void setSUPPLIER_ID(String sUPPLIER_ID) {
		SUPPLIER_ID = sUPPLIER_ID;
	}



	public String getREASON() {
		return REASON;
	}



	public void setREASON(String rEASON) {
		REASON = rEASON;
	}



	public String getEMAIL() {
		return EMAIL;
	}



	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	
}
