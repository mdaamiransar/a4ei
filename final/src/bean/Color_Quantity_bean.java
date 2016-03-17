package bean;



public class Color_Quantity_bean {
	private int PRODUCT_ID;
	private String COLOR;
	private String QUANTITY;
	
	public Color_Quantity_bean() {
		
	}
	public Color_Quantity_bean(int pRODUCT_ID, String cOLOR, String qUANTITY) {
		
		PRODUCT_ID = pRODUCT_ID;
		COLOR = cOLOR;
		QUANTITY = qUANTITY;
	}
	public int getPRODUCT_ID() {
		return PRODUCT_ID;
	}
	public void setPRODUCT_ID(int pRODUCT_ID) {
		PRODUCT_ID = pRODUCT_ID;
	}
	public String getCOLOR() {
		return COLOR;
	}
	public void setCOLOR(String cOLOR) {
		COLOR = cOLOR;
	}
	public String getQUANTITY() {
		return QUANTITY;
	}
	public void setQUANTITY(String qUANTITY) {
		QUANTITY = qUANTITY;
	}
		
	
}

