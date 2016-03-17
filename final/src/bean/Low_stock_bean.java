package bean;

public class Low_stock_bean {
	private String PRODUCT_NAME;
	private String SUPPLIER_ID;
	private String color;
	private int quantity;
	public Low_stock_bean(String pRODUCT_NAME, String sUPPLIER_ID, String color, int quantity) {
		super();
		PRODUCT_NAME = pRODUCT_NAME;
		SUPPLIER_ID = sUPPLIER_ID;
		this.color = color;
		this.quantity = quantity;
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
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}
