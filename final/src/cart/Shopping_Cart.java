package cart;

import java.io.Serializable;

public class Shopping_Cart implements Serializable{
	
	

	int product_id;
	String short_description;
	String seller;
	double shipping_charge;
	String delivery_date;
	double price;
	double total_price;
	String product_name;
	int quantity;
	double subtotal;
	String email;
	int color_id;
public Shopping_Cart() {
		
	}

	public Shopping_Cart(int product_id, String short_description, String seller, double shipping_charge, double price,
		double total_price, String product_name, int quantity, double subtotal) {
	super();
	this.product_id = product_id;
	this.short_description = short_description;
	this.seller = seller;
	this.shipping_charge = shipping_charge;
	this.price = price;
	this.total_price = total_price;
	this.product_name = product_name;
	this.quantity = quantity;
	this.subtotal = subtotal;
}

	public Shopping_Cart(int product_id, String desc, String seller, double shipping_charge, String delivery_date,
			double price, String name,double total_price,int quantity,double subtotal,String email) {
		this.product_id = product_id;
		this.short_description = desc;
		this.seller = seller;
		this.shipping_charge = shipping_charge;
		this.delivery_date = delivery_date;
		this.price = price;
		this.product_name = name;
		this.total_price=total_price;
		this.quantity=quantity;
		this.subtotal=subtotal;
		this.email=email;
		
	}

	/*public Shopping_Cart(String product_id2, String sHORT_DES, String sELLER2, double sHIPPING_CHARGE2,
			String dELIVERY_DATE2, double uNIT_PRICE, String product_name2, double tOTAL_PRICE2, int qUANTITY2,
			double sUB_TOTAL) {
		this.product_id = product_id2;
		this.short_description = sHORT_DES;
		this.seller = sELLER2;
		this.shipping_charge = sHIPPING_CHARGE2;
		this.delivery_date = dELIVERY_DATE2;
		this.price =uNIT_PRICE;
		this.product_name =product_id;
		this.total_price=tOTAL_PRICE2;
		this.quantity=qUANTITY2;
		this.subtotal=sUB_TOTAL;
	}*/

	
	public Shopping_Cart(int product_id, String short_description, String seller, double shipping_charge,
			String delivery_date, double price, double total_price, String product_name, int quantity,
			double subtotal) {
		super();
		this.product_id = product_id;
		this.short_description = short_description;
		this.seller = seller;
		this.shipping_charge = shipping_charge;
		this.delivery_date = delivery_date;
		this.price = price;
		this.total_price = total_price;
		this.product_name = product_name;
		this.quantity = quantity;
		this.subtotal = subtotal;
	}
	

	
	
	
	public Shopping_Cart(int product_id, String short_description, String seller, double shipping_charge,
			String delivery_date, double price, double total_price, String product_name, int quantity, double subtotal,
			String email, int color_id) {
		super();
		this.product_id = product_id;
		this.short_description = short_description;
		this.seller = seller;
		this.shipping_charge = shipping_charge;
		this.delivery_date = delivery_date;
		this.price = price;
		this.total_price = total_price;
		this.product_name = product_name;
		this.quantity = quantity;
		this.subtotal = subtotal;
		this.email = email;
		this.color_id = color_id;
	}

	
	
	
	public int getColor_id() {
		return color_id;
	}

	public void setColor_id(int color_id) {
		this.color_id = color_id;
	}

	public Shopping_Cart(int quantity) {
		
		this.quantity = quantity;
	}

	public double getSubtotal() {
		return subtotal;
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotal_price() {
		return total_price;
	}

	public void setTotal_price(double total_price) {
		this.total_price = total_price;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	

	public String getShort_description() {
		return short_description;
	}

	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public double getShipping_charge() {
		return shipping_charge;
	}

	public void setShipping_charge(double shipping_charge) {
		this.shipping_charge = shipping_charge;
	}

	public String getDelivery_date() {
		return delivery_date;
	}

	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public Shopping_Cart(int product_id, int quantity, int color_id) {
		super();
		this.product_id = product_id;
		this.quantity = quantity;
		this.color_id = color_id;
	}

	
	
	
	
}
