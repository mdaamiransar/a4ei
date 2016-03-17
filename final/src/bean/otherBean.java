package bean;

public class otherBean {
	 private String CATEGORY_NAME;
	 private String BRAND_NAME;
	 private String PRODUCT_NAME;
	 private  Double SALES_PRICE;
	 private String COMPANY_NAME;
	public otherBean(String pRODUCT_NAME, String cOMPANY_NAME, Double sALES_PRICE) {
		super();
		PRODUCT_NAME = pRODUCT_NAME;
		SALES_PRICE = sALES_PRICE;
		COMPANY_NAME = cOMPANY_NAME;
	}
	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}
	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}
	public Double getSALES_PRICE() {
		return SALES_PRICE;
	}
	public void setSALES_PRICE(Double sALES_PRICE) {
		SALES_PRICE = sALES_PRICE;
	}
	public String getCOMPANY_NAME() {
		return COMPANY_NAME;
	}
	public void setCOMPANY_NAME(String cOMPANY_NAME) {
		COMPANY_NAME = cOMPANY_NAME;
	}
	public otherBean(String cATEGORY_NAME, String bRAND_NAME, String cOMPANY_NAME) {
		super();
		CATEGORY_NAME = cATEGORY_NAME;
		BRAND_NAME = bRAND_NAME;
		COMPANY_NAME = cOMPANY_NAME;
	}
	public String getCATEGORY_NAME() {
		return CATEGORY_NAME;
	}
	public void setCATEGORY_NAME(String cATEGORY_NAME) {
		CATEGORY_NAME = cATEGORY_NAME;
	}
	public String getBRAND_NAME() {
		return BRAND_NAME;
	}
	public void setBRAND_NAME(String bRAND_NAME) {
		BRAND_NAME = bRAND_NAME;
	}

	
}
