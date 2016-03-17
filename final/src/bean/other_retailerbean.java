package bean;

public class other_retailerbean {
	
	private String PRODUCT_NAME;
	private String name;
	private Double SALES_PRICE;
	public other_retailerbean(String pRODUCT_NAME, String name, Double sALES_PRICE) {
		super();
		PRODUCT_NAME = pRODUCT_NAME;
		this.name = name;
		SALES_PRICE = sALES_PRICE;
	}
	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}
	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getSALES_PRICE() {
		return SALES_PRICE;
	}
	public void setSALES_PRICE(Double sALES_PRICE) {
		SALES_PRICE = sALES_PRICE;
	}
}