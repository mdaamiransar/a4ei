package bean;

public class SubCategory_bean {
	private String CATEGORY_ID;
	private String CATEGORY_NAME;
	private String SUBCATEGORY_ID;
	private String SUBCATEGORY_NAME;
	private String SUBCATEGORY_DATE;
	
	public SubCategory_bean(String cATEGORY_ID, String sUBCATEGORY_ID, String sUBCATEGORY_NAME,
			String sUBCATEGORY_DATE) {
		super();
		CATEGORY_ID = cATEGORY_ID;
		SUBCATEGORY_ID = sUBCATEGORY_ID;
		SUBCATEGORY_NAME = sUBCATEGORY_NAME;
		SUBCATEGORY_DATE = sUBCATEGORY_DATE;
	}
	public String getCATEGORY_ID() {
		return CATEGORY_ID;
	}
	public void setCATEGORY_ID(String cATEGORY_ID) {
		CATEGORY_ID = cATEGORY_ID;
	}
	public String getCATEGORY_NAME() {
		return CATEGORY_NAME;
	}
	public void setCATEGORY_NAME(String cATEGORY_NAME) {
		CATEGORY_NAME = cATEGORY_NAME;
	}
	public String getSUBCATEGORY_ID() {
		return SUBCATEGORY_ID;
	}
	public void setSUBCATEGORY_ID(String sUBCATEGORY_ID) {
		SUBCATEGORY_ID = sUBCATEGORY_ID;
	}
	public String getSUBCATEGORY_NAME() {
		return SUBCATEGORY_NAME;
	}
	public void setSUBCATEGORY_NAME(String sUBCATEGORY_NAME) {
		SUBCATEGORY_NAME = sUBCATEGORY_NAME;
	}
	public String getSUBCATEGORY_DATE() {
		return SUBCATEGORY_DATE;
	}
	public void setSUBCATEGORY_DATE(String sUBCATEGORY_DATE) {
		SUBCATEGORY_DATE = sUBCATEGORY_DATE;
	}
	
	
	
	
}
