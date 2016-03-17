package bean;

public class complete_order_bean {
	private String ORDER_DETAILS_ID;
	private String ADDRESS;
	private String ORDER_AMOUNT;
	private String ORDER_DATE;
	private String PAYMENT_TYPE_ID;
	private String ORDER_STATUS_ID;
	
	private String email;
	private String name;
	private String supplier_id;
	
	public complete_order_bean(String oRDER_DETAILS_ID, String aDDRESS, String oRDER_AMOUNT, String oRDER_DATE,
			String pAYMENT_TYPE_ID, String oRDER_STATUS_ID, String email, String name, String supplier_id) {
		super();
		ORDER_DETAILS_ID = oRDER_DETAILS_ID;
		ADDRESS = aDDRESS;
		ORDER_AMOUNT = oRDER_AMOUNT;
		ORDER_DATE = oRDER_DATE;
		PAYMENT_TYPE_ID = pAYMENT_TYPE_ID;
		ORDER_STATUS_ID = oRDER_STATUS_ID;
		this.email = email;
		this.name = name;
		this.supplier_id = supplier_id;
	}

	public String getORDER_DETAILS_ID() {
		return ORDER_DETAILS_ID;
	}

	public void setORDER_DETAILS_ID(String oRDER_DETAILS_ID) {
		ORDER_DETAILS_ID = oRDER_DETAILS_ID;
	}

	public String getADDRESS() {
		return ADDRESS;
	}

	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}

	public String getORDER_AMOUNT() {
		return ORDER_AMOUNT;
	}

	public void setORDER_AMOUNT(String oRDER_AMOUNT) {
		ORDER_AMOUNT = oRDER_AMOUNT;
	}

	public String getORDER_DATE() {
		return ORDER_DATE;
	}

	public void setORDER_DATE(String oRDER_DATE) {
		ORDER_DATE = oRDER_DATE;
	}

	public String getPAYMENT_TYPE_ID() {
		return PAYMENT_TYPE_ID;
	}

	public void setPAYMENT_TYPE_ID(String pAYMENT_TYPE_ID) {
		PAYMENT_TYPE_ID = pAYMENT_TYPE_ID;
	}

	public String getORDER_STATUS_ID() {
		return ORDER_STATUS_ID;
	}

	public void setORDER_STATUS_ID(String oRDER_STATUS_ID) {
		ORDER_STATUS_ID = oRDER_STATUS_ID;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSupplier_id() {
		return supplier_id;
	}

	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	
	

}
