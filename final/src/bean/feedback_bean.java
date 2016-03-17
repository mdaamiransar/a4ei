package bean;

public class feedback_bean {
	
	String product_name;
	String email;
	String rating;
	String review;
	String date;
	public feedback_bean(String product_name, String email, String rating, String review, String date) {
		
		this.product_name = product_name;
		this.email = email;
		this.rating = rating;
		this.review = review;
		this.date = date;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRating() {
		return rating;
	}
	public void setRating(String rating) {
		this.rating = rating;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	

}
