package bean;

public class Order_Tracking 
{
  private String Email;
  private int Order_Id;
  private String Status_name;

  
  //Constructors

	public Order_Tracking(String email, int order_Id) {
	super();
	Email = email;
	Order_Id = order_Id;
}
	 public Order_Tracking(String status_name) {
			super();
			Status_name = status_name;
		}




  
  //Setters And Getters
  
 




public String getEmail() {
		return Email;
	}




	public void setEmail(String email) {
		Email = email;
	}


	public int getOrder_Id() {
		return Order_Id;
	}


	public void setOrder_Id(int order_Id) {
		Order_Id = order_Id;
	}





	public String getStatus_name() {
		return Status_name;
	}





	public void setStatus_name(String status_name) {
		Status_name = status_name;
	}
  
  
}
