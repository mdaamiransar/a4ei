package bean;

public class Retailer_returnbean {
int ORDER_DETAILS_ID;
String EMAIL;
String REASON;
String NAME;
String SUPPLIER_ID;
public Retailer_returnbean(int oRDER_DETAILS_ID, String eMAIL, String rEASON, String nAME, String sUPPLIER_ID) {
	
	ORDER_DETAILS_ID = oRDER_DETAILS_ID;
	EMAIL = eMAIL;
	REASON = rEASON;
	NAME = nAME;
	SUPPLIER_ID = sUPPLIER_ID;
}
public int getORDER_DETAILS_ID() {
	return ORDER_DETAILS_ID;
}
public void setORDER_DETAILS_ID(int oRDER_DETAILS_ID) {
	ORDER_DETAILS_ID = oRDER_DETAILS_ID;
}
public String getEMAIL() {
	return EMAIL;
}
public void setEMAIL(String eMAIL) {
	EMAIL = eMAIL;
}
public String getREASON() {
	return REASON;
}
public void setREASON(String rEASON) {
	REASON = rEASON;
}
public String getNAME() {
	return NAME;
}
public void setNAME(String nAME) {
	NAME = nAME;
}
public String getSUPPLIER_ID() {
	return SUPPLIER_ID;
}
public void setSUPPLIER_ID(String sUPPLIER_ID) {
	SUPPLIER_ID = sUPPLIER_ID;
}


}
