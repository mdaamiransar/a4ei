package bean;



public class Product_bean {
	
	private int PRODUCT_ID;
	private String CATEGORY_ID;
	
	private String SUBCATEGORY_ID;
	
	private String BRAND_NAME;
	private String BRAND_ID;
	
	private String PRODUCT_NAME;
	private String  SHORT_DESCRIPTION;
	private String DETAILED_DESCRIPTION;
	private String PRODUCT_KEYWORDS;
	private String COMPANY_NAME;
    private  Double SALES_PRICE;
    
    private Double MSRP;
    private String DISCOUNTS;
    private String WEIGHT;
    
    private String PRODUCT_STATUS;
    String CASH_ON_DELIVERY;
    String WARRENTY;
    String SHIPPING_COST;
    String REPLACEMENT_WARRENTY;
    /*private InputStream IMAGE;*/
    private String PRODUCT_UPDATED;
    private String filename;
    private String color;
    private String quantity;
    int image_id;
  
	


//product insert

	public Product_bean( String cATEGORY_ID, String sUBCATEGORY_ID, String bRAND_ID,
			String pRODUCT_NAME, String sHORT_DESCRIPTION, String dETAILED_DESCRIPTION, String pRODUCT_KEYWORDS,
			String cOMPANY_NAME, Double sALES_PRICE, Double mSRP, String dISCOUNTS, String wEIGHT, String pRODUCT_STATUS,
			String cASH_ON_DELIVERY, String wARRENTY, String sHIPPING_COST, String rEPLACEMENT_WARRENTY,
			String pRODUCT_UPDATED) {
		super();
		
		CATEGORY_ID = cATEGORY_ID;
		SUBCATEGORY_ID = sUBCATEGORY_ID;
		BRAND_ID = bRAND_ID;
		PRODUCT_NAME = pRODUCT_NAME;
		SHORT_DESCRIPTION = sHORT_DESCRIPTION;
		DETAILED_DESCRIPTION = dETAILED_DESCRIPTION;
		PRODUCT_KEYWORDS = pRODUCT_KEYWORDS;
		COMPANY_NAME = cOMPANY_NAME;
		SALES_PRICE = sALES_PRICE;
		MSRP = mSRP;
		DISCOUNTS = dISCOUNTS;
		WEIGHT = wEIGHT;
		PRODUCT_STATUS = pRODUCT_STATUS;
		CASH_ON_DELIVERY = cASH_ON_DELIVERY;
		WARRENTY = wARRENTY;
		SHIPPING_COST = sHIPPING_COST;
		REPLACEMENT_WARRENTY = rEPLACEMENT_WARRENTY;
		PRODUCT_UPDATED = pRODUCT_UPDATED;
		
	}
//update

	public Product_bean(int pRODUCT_ID, String pRODUCT_NAME, String sHORT_DESCRIPTION, String dETAILED_DESCRIPTION,
			String pRODUCT_KEYWORDS, String cOMPANY_NAME, Double sALES_PRICE, Double mSRP, String dISCOUNTS,
			String wEIGHT, String pRODUCT_STATUS, String cASH_ON_DELIVERY, String wARRENTY, String sHIPPING_COST,
			String rEPLACEMENT_WARRENTY, String pRODUCT_UPDATED) {
		super();
		PRODUCT_ID = pRODUCT_ID;
		PRODUCT_NAME = pRODUCT_NAME;
		SHORT_DESCRIPTION = sHORT_DESCRIPTION;
		DETAILED_DESCRIPTION = dETAILED_DESCRIPTION;
		PRODUCT_KEYWORDS = pRODUCT_KEYWORDS;
		COMPANY_NAME = cOMPANY_NAME;
		SALES_PRICE = sALES_PRICE;
		MSRP = mSRP;
		DISCOUNTS = dISCOUNTS;
		WEIGHT = wEIGHT;
		PRODUCT_STATUS = pRODUCT_STATUS;
		CASH_ON_DELIVERY = cASH_ON_DELIVERY;
		WARRENTY = wARRENTY;
		SHIPPING_COST = sHIPPING_COST;
		REPLACEMENT_WARRENTY = rEPLACEMENT_WARRENTY;
		PRODUCT_UPDATED = pRODUCT_UPDATED;
		
	}





	public Product_bean(int pRODUCT_ID, String pRODUCT_NAME,String bRAND_Name,  String cOMPANY_NAME, Double sALES_PRICE,
			Double mSRP, String pRODUCT_STATUS, String sHIPPING_COST,String pRODUCT_UPDATED) {
		super();
		PRODUCT_ID = pRODUCT_ID;
		PRODUCT_NAME = pRODUCT_NAME;
		BRAND_NAME = bRAND_Name;
		
		COMPANY_NAME = cOMPANY_NAME;
		SALES_PRICE = sALES_PRICE;
		MSRP = mSRP;
		PRODUCT_STATUS = pRODUCT_STATUS;
		SHIPPING_COST = sHIPPING_COST;
		PRODUCT_UPDATED = pRODUCT_UPDATED;
		
	}




	public Product_bean(int pRODUCT_ID) {
		super();
		PRODUCT_ID = pRODUCT_ID;
	}
	public int getPRODUCT_ID() {
		return PRODUCT_ID;
	}




	public void setPRODUCT_ID(int pRODUCT_ID) {
		PRODUCT_ID = pRODUCT_ID;
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








	public String getBRAND_NAME() {
		return BRAND_NAME;
	}


	public void setBRAND_NAME(String bRAND_NAME) {
		BRAND_NAME = bRAND_NAME;
	}


	public String getPRODUCT_NAME() {
		return PRODUCT_NAME;
	}




	public void setPRODUCT_NAME(String pRODUCT_NAME) {
		PRODUCT_NAME = pRODUCT_NAME;
	}




	public String getSHORT_DESCRIPTION() {
		return SHORT_DESCRIPTION;
	}




	public void setSHORT_DESCRIPTION(String sHORT_DESCRIPTION) {
		SHORT_DESCRIPTION = sHORT_DESCRIPTION;
	}




	public String getDETAILED_DESCRIPTION() {
		return DETAILED_DESCRIPTION;
	}




	public void setDETAILED_DESCRIPTION(String dETAILED_DESCRIPTION) {
		DETAILED_DESCRIPTION = dETAILED_DESCRIPTION;
	}




	public String getPRODUCT_KEYWORDS() {
		return PRODUCT_KEYWORDS;
	}




	public void setPRODUCT_KEYWORDS(String pRODUCT_KEYWORDS) {
		PRODUCT_KEYWORDS = pRODUCT_KEYWORDS;
	}







	public String getCOMPANY_NAME() {
		return COMPANY_NAME;
	}

	public void setCOMPANY_NAME(String cOMPANY_NAME) {
		COMPANY_NAME = cOMPANY_NAME;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public Double getSALES_PRICE() {
		return SALES_PRICE;
	}




	public void setSALES_PRICE(Double sALES_PRICE) {
		SALES_PRICE = sALES_PRICE;
	}




	public Double getMSRP() {
		return MSRP;
	}




	public void setMSRP(Double mSRP) {
		MSRP = mSRP;
	}




	public String getDISCOUNTS() {
		return DISCOUNTS;
	}




	public void setDISCOUNTS(String dISCOUNTS) {
		DISCOUNTS = dISCOUNTS;
	}




	public String getWEIGHT() {
		return WEIGHT;
	}




	public void setWEIGHT(String wEIGHT) {
		WEIGHT = wEIGHT;
	}




	public String getPRODUCT_STATUS() {
		return PRODUCT_STATUS;
	}




	public void setPRODUCT_STATUS(String pRODUCT_STATUS) {
		PRODUCT_STATUS = pRODUCT_STATUS;
	}




	public String getCASH_ON_DELIVERY() {
		return CASH_ON_DELIVERY;
	}




	public void setCASH_ON_DELIVERY(String cASH_ON_DELIVERY) {
		CASH_ON_DELIVERY = cASH_ON_DELIVERY;
	}




	public String getWARRENTY() {
		return WARRENTY;
	}




	public void setWARRENTY(String wARRENTY) {
		WARRENTY = wARRENTY;
	}




	public String getSHIPPING_COST() {
		return SHIPPING_COST;
	}




	public void setSHIPPING_COST(String sHIPPING_COST) {
		SHIPPING_COST = sHIPPING_COST;
	}




	public String getREPLACEMENT_WARRENTY() {
		return REPLACEMENT_WARRENTY;
	}




	public void setREPLACEMENT_WARRENTY(String rEPLACEMENT_WARRENTY) {
		REPLACEMENT_WARRENTY = rEPLACEMENT_WARRENTY;
	}




	public String getPRODUCT_UPDATED() {
		return PRODUCT_UPDATED;
	}




	public void setPRODUCT_UPDATED(String pRODUCT_UPDATED) {
		PRODUCT_UPDATED = pRODUCT_UPDATED;
	}




	public String getFilename() {
		return filename;
	}




	public void setFilename(String filename) {
		this.filename = filename;
	}




	public String getColor() {
		return color;
	}




	public void setColor(String color) {
		this.color = color;
	}




	public int getImage_id() {
		return image_id;
	}




	public void setImage_id(int image_id) {
		this.image_id = image_id;
	}


	public String getBRAND_ID() {
		return BRAND_ID;
	}


	public void setBRAND_ID(String bRAND_ID) {
		BRAND_ID = bRAND_ID;
	}








}