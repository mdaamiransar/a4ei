package bean;

public class update_statusbean {
	int ORDER_DETAILS_ID;
	String ORDER_STATUS_ID;
	public update_statusbean(String oRDER_STATUS_ID, int oRDER_DETAILS_ID) {
		super();
		ORDER_DETAILS_ID = oRDER_DETAILS_ID;
		ORDER_STATUS_ID = oRDER_STATUS_ID;
	}
	public int getORDER_DETAILS_ID() {
		return ORDER_DETAILS_ID;
	}
	public void setORDER_DETAILS_ID(int oRDER_DETAILS_ID) {
		ORDER_DETAILS_ID = oRDER_DETAILS_ID;
	}
	public String getORDER_STATUS_ID() {
		return ORDER_STATUS_ID;
	}
	public void setORDER_STATUS_ID(String oRDER_STATUS_ID) {
		ORDER_STATUS_ID = oRDER_STATUS_ID;
	}
	
	
}
