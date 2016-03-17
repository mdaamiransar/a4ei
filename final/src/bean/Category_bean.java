package bean;

public class Category_bean  {
	private String CATEGORY_ID;
	private String CATEGORY_NAME;
	private String CATEGORY_DATE;	
	
	
	public Category_bean(String cATEGORY_ID, String cATEGORY_NAME, String cATEGORY_DATE) {
		
		CATEGORY_ID = cATEGORY_ID;
		CATEGORY_NAME = cATEGORY_NAME;
		CATEGORY_DATE = cATEGORY_DATE;
	}
	public String getCATEGORY_NAME() {
		return CATEGORY_NAME;
	}
	public void setCATEGORY_NAME(String cATEGORY_NAME) {
		CATEGORY_NAME = cATEGORY_NAME;
	}
	public String getCATEGORY_DATE() {
		return CATEGORY_DATE;
	}
	public void setCATEGORY_DATE(String cATEGORY_DATE) {
		CATEGORY_DATE = cATEGORY_DATE;
		
		
	}
	public String getCATEGORY_ID() {
		return CATEGORY_ID;
	}
	public void setCATEGORY_ID(String cATEGORY_ID) {
		CATEGORY_ID = cATEGORY_ID;
	}
	
	
}
