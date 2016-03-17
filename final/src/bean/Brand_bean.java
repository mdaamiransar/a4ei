package bean;

public class Brand_bean  {
	private String CATEGORY_ID;
	
	private String SUBCATEGORY_ID;
	private String BRAND_ID;
	private String BRAND_NAME;
	
	
	public Brand_bean(String cATEGORY_ID, String sUBCATEGORY_ID, String bRAND_ID,
			String bRAND_NAME) {
		super();
		CATEGORY_ID = cATEGORY_ID;
		
		SUBCATEGORY_ID = sUBCATEGORY_ID;
		BRAND_ID = bRAND_ID;
		BRAND_NAME = bRAND_NAME;
	}


	public String getCATEGORY_ID() {
		return CATEGORY_ID;
	}


	public void setCATEGORY_ID(String cATEGORY_ID) {
		CATEGORY_ID = cATEGORY_ID;
	}


	
	public String getSUBCATEGORY_ID() {
		return SUBCATEGORY_ID;
	}


	public void setSUBCATEGORY_ID(String sUBCATEGORY_ID) {
		SUBCATEGORY_ID = sUBCATEGORY_ID;
	}


	public String getBRAND_ID() {
		return BRAND_ID;
	}


	public void setBRAND_ID(String bRAND_ID) {
		BRAND_ID = bRAND_ID;
	}


	public String getBRAND_NAME() {
		return BRAND_NAME;
	}


	public void setBRAND_NAME(String bRAND_NAME) {
		BRAND_NAME = bRAND_NAME;
	}
	
}
