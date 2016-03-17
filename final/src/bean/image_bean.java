package bean;

import java.io.InputStream;

public class image_bean {
	private String IMAGE_ID;
	private int PRODUCT_ID;
	private String COLOR;
	private InputStream IMAGE;
	private String filename;
	private String filename_new;
	
	

public image_bean(String iMAGE_ID, int pRODUCT_ID, String cOLOR, InputStream iMAGE, String filename,
			String filename_new) {
		super();
		IMAGE_ID = iMAGE_ID;
		PRODUCT_ID = pRODUCT_ID;
		COLOR = cOLOR;
		IMAGE = iMAGE;
		this.filename = filename;
		this.filename_new = filename_new;
	}




public image_bean(String iMAGE_ID, int pRODUCT_ID, String cOLOR, InputStream iMAGE, String filename) {
	super();
	IMAGE_ID = iMAGE_ID;
	PRODUCT_ID = pRODUCT_ID;
	COLOR = cOLOR;
	IMAGE = iMAGE;
	this.filename = filename;
}






public image_bean(String iMAGE_ID2, int pRODUCT_ID2, String filename_new2, InputStream is) {
	IMAGE_ID =  iMAGE_ID2;
	PRODUCT_ID = pRODUCT_ID2;
	IMAGE =is;
	this.filename_new= filename_new2;
}




public image_bean(String image_id, int pRODUCT_ID, String cOLOR, String fILE_NAME) {
	IMAGE_ID = image_id;
	PRODUCT_ID = pRODUCT_ID;
	COLOR = cOLOR;
	filename=fILE_NAME;
}




public String getIMAGE_ID() {
		return IMAGE_ID;
	}
	public void setIMAGE_ID(String iMAGE_ID) {
		IMAGE_ID = iMAGE_ID;
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
	public InputStream getIMAGE() {
		return IMAGE;
	}
	public void setIMAGE(InputStream iMAGE) {
		IMAGE = iMAGE;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	
	 public String getFilename_new() {
			return filename_new;
		}




		public void setFilename_new(String filename_new) {
			this.filename_new = filename_new;
		}
}




	
