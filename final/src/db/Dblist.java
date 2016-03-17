package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class Dblist implements ServletContextListener {


    public void contextInitialized(ServletContextEvent arg0)  { 
    	Connection con=null;
    	Connection con1=null;
    	Statement st=null;
    	try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/","root","root");
			st=con.createStatement();
			String sql1="CREATE DATABASE IF NOT EXISTS Shopping";
			st.execute(sql1);
			System.out.println("database created");
			
			con1=Db.Condb();
		    st=con1.createStatement();
	 String sql2="CREATE TABLE IF NOT EXISTS CATEGORY"+
				    "(CATEGORY_ID int NOT NULL AUTO_INCREMENT,"+
					"CATEGORY_NAME VARCHAR(40) NOT NULL,"+
				    "CATEGORY_DATE VARCHAR(45) NOT NULL,PRIMARY KEY (CATEGORY_ID))";
				    st.execute(sql2);
				    System.out.println("CATEGORY TABLE created");
				    
	   String sql3="CREATE TABLE IF NOT EXISTS SUBCATEGORY"+
				    "(SUBCATEGORY_ID int NOT NULL AUTO_INCREMENT,"+
				    "SUBCATEGORY_NAME VARCHAR(40) NOT NULL,"+
				    "CATEGORY_ID int NOT NULL,"+
				    "SUBCATEGORY_DATE VARCHAR(45) NOT NULL,"+
				    "PRIMARY KEY(SUBCATEGORY_ID),FOREIGN KEY(CATEGORY_ID) REFERENCES "+
				    "CATEGORY(CATEGORY_ID))";
				    st.execute(sql3);
				    System.out.println("SUBCATEGORY TABLE created");
				    
				    
		  String sql4="CREATE TABLE IF NOT EXISTS BRAND"+
				 "(CATEGORY_ID int NOT NULL,"+
				  "SUBCATEGORY_ID int NOT NULL,"+
				 "BRAND_ID int NOT NULL AUTO_INCREMENT, "+
				 "BRAND_NAME VARCHAR(40) NOT NULL,PRIMARY KEY(BRAND_ID),"+
				 "FOREIGN KEY(CATEGORY_ID) REFERENCES "+
				  "CATEGORY(CATEGORY_ID),FOREIGN KEY(SUBCATEGORY_ID) REFERENCES "+
				  "SUBCATEGORY(SUBCATEGORY_ID) ON DELETE CASCADE)";
				
				st.execute(sql4);
				System.out.println("BRAND TABLE created"); 
				
		String sql5="CREATE TABLE IF NOT EXISTS PRODUCTS"+
				 "(PRODUCT_ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
				 "CATEGORY_ID int NOT NULL,"+
				 "SUBCATEGORY_ID int NOT NULL,"+
				 "BRAND_ID int NOT NULL , "+	 
				 "PRODUCT_NAME VARCHAR(40) NOT NULL,"+
				 "SHORT_DESCRIPTION VARCHAR(250) NOT NULL,"+
				 "DETAILED_DESCRIPTION VARCHAR(250) NOT NULL,"+
				 "PRODUCT_KEYWORDS VARCHAR(40) NOT NULL,"+
				 "SUPPLIER_ID VARCHAR(40) NOT NULL,"+
				 "SALES_PRICE DOUBLE NOT NULL,"+				 
				 "MSRP DOUBLE NOT NULL,"+
				 "DISCOUNTS VARCHAR(40) NOT NULL,"+
				 "WEIGHT VARCHAR(40) NOT NULL,"+
				 "PRODUCT_STATUS VARCHAR(40) NOT NULL,"+
				 "CASH_ON_DELIVERY VARCHAR(40) NOT NULL,"+
				 "WARRENTY VARCHAR(40) NOT NULL,"+
				 "SHIPPING_COST VARCHAR(40) NOT NULL,"+
				 "REPLACEMENT_WARRENTY VARCHAR(40) NOT NULL,"+
				 /*"IMAGE LONGBLOB NOT NULL,"+*/
				 "PRODUCT_UPDATED VARCHAR(45) NOT NULL,"+
				 "FOREIGN KEY(CATEGORY_ID) REFERENCES "+
				  "CATEGORY(CATEGORY_ID),FOREIGN KEY(SUBCATEGORY_ID) REFERENCES "+
				  "SUBCATEGORY(SUBCATEGORY_ID),FOREIGN KEY(BRAND_ID) REFERENCES "+
				  "BRAND(BRAND_ID) ON DELETE CASCADE)";		 
				
				st.execute(sql5);
				System.out.println("Products table created");
				
		String sql6="CREATE TABLE IF NOT EXISTS COLOR"+
						"(COLOR_ID INT NOT NULL AUTO_INCREMENT ,"+
						"PRODUCT_ID INT NOT NULL,"+
						"COLOR VARCHAR(40) NOT NULL,"+
						"QUANTITY VARCHAR(40) NOT NULL,PRIMARY KEY(COLOR_ID),"+						
						"UNIQUE KEY (PRODUCT_ID, COLOR),"+
						"FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID) ON DELETE CASCADE)";
						
				
				st.execute(sql6);
				System.out.println("Color TABLE created");
				
		String sql7="CREATE TABLE IF NOT EXISTS IMAGE"+
				"(IMAGE_ID INT(10) AUTO_INCREMENT PRIMARY KEY,"+
				"PRODUCT_ID INT NOT NULL,"+
				"COLOR VARCHAR(40) NOT NULL,"+
				"FILE_NAME VARCHAR(40) NOT NULL,"+
				"IMAGE LONGBLOB NOT NULL,"+
				"FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID) ON DELETE CASCADE )";
				
				
				st.execute(sql7);
				System.out.println("Image created");
			   
		String sql8="CREATE TABLE IF NOT EXISTS ADMIN_INFO"+
				
			    "(FIRST_NAME VARCHAR(40) NOT NULL,"+"LAST_NAME VARCHAR(40) NOT NULL,"+
				"EMAIL_ID VARCHAR(40) PRIMARY KEY NOT NULL,"+"USER_NAME VARCHAR(40) NOT NULL,"+
			    "PASSWORD VARCHAR(40) NOT NULL,"+"CONFIRM_PASSWORD VARCHAR(40) NOT NULL,"+"IMAGE LONGBLOB NOT NULL)";
				
				st.execute(sql8);
				System.out.println("Admin table created");
				
	String sql9="CREATE TABLE IF NOT EXISTS RETAILER_REGISTRATION "+
						"(REGISTRATION_ID int(9) NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
						"FIRST_NAME VARCHAR(40) NOT NULL,"+
						"LAST_NAME VARCHAR(40) NOT NULL,"+
						"ADDRESS VARCHAR(40) NOT NULL,"+
						"PIN VARCHAR(40) NOT NULL,"+
						"CONTACT_NUMBER VARCHAR(40) NOT NULL,"+
						"EMAIL_ADDRESS VARCHAR(40) NOT NULL,"+
						"YOUR_MAIN_SELLING_CATEGORY VARCHAR(40) NOT NULL,"+
						"USER_NAME VARCHAR(40) NOT NULL,"+
						"CREATE_PASSWORD VARCHAR(40) NOT NULL,"+
					    "RETYPE_PASSWORD VARCHAR(40) NOT NULL)";
						
				st.execute(sql9);
				System.out.println("RETAILER_REGISTRATION TABLE created");
				
		String sql10="CREATE TABLE IF NOT EXISTS RETAILER_INFORMATION "+
						
						"(REGISTRATION_ID INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,"+
						"FOREIGN KEY(REGISTRATION_ID) REFERENCES RETAILER_REGISTRATION(REGISTRATION_ID),"+
						"COMPANY_NAME VARCHAR(40) NOT NULL,"+
						"COMPANY_ADDRESS VARCHAR(40) NOT NULL,"+
						"PAN_NO VARCHAR(40) NOT NULL,"+
						"ADDRESS_PROOF LONGBLOB NOT NULL,"+
						"BANK_NAME VARCHAR(40) NOT NULL,"+
						"ACCOUNT_NO VARCHAR(40) NOT NULL,"+
						"NAME_ON_ACCOUNT VARCHAR(40) NOT NULL,"+
						"IFSC_CODE VARCHAR(40) NOT NULL,"+
						"TIN_NO VARCHAR(40) NOT NULL)";
						
						
				st.execute(sql10);
				System.out.println("RETAILER_INFORMATION TABLE created");
				

				
				
	       String sql11="CREATE TABLE IF NOT EXISTS REGISTERED_CART"+
					    "(CART_ID INT (10) AUTO_INCREMENT PRIMARY KEY, "+
			    		"PRODUCT_ID int NOT NULL,"+
						"PRODUCT_NAME VARCHAR(40) NOT NULL,"+
						"SHORT_DES VARCHAR(40) NOT NULL,"+
					    "SELLER VARCHAR(90) NOT NULL,"+
					    "DELIVERY_DATE VARCHAR(90) NOT NULL,"+
						"UNIT_PRICE DOUBLE NOT NULL, "+
						"QUANTITY INT NOT NULL, "+
						"TOTAL_PRICE DOUBLE NOT NULL, "+
						"SHIPPING_CHARGE DOUBLE NOT NULL, "+
						"SUB_TOTAL DOUBLE NOT NULL,email VARCHAR(40) NOT NULL)";
					    st.execute(sql11);
					    System.out.println("REGISTERED_CART TABLE CREATED");
					    
						
	        String sql12="CREATE TABLE IF NOT EXISTS CUSTOMER_INFO"+
						    "(CUSTOMER_ID INT (10) AUTO_INCREMENT PRIMARY KEY,"+
						    "TITLE VARCHAR(50) NOT NULL,"+"FIRST_NAME VARCHAR(50) NOT NULL,"+
						    "LAST_NAME VARCHAR(50) NOT NULL,"+"USER_NAME VARCHAR(50) NOT NULL,"+
						    "PASSWORD VARCHAR(50) NOT NULL,"+
						   "EMAIL VARCHAR(50) NOT NULL,"+"PHONE VARCHAR(50) NOT NULL,"+
						    "ADDRESS VARCHAR(250) NOT NULL)";
						
						st.execute(sql12);
						System.out.println("Customer info created");
						
		
						
		        String sql13="CREATE TABLE IF NOT EXISTS ORDER_STATUS"+
								  "(ORDER_STATUS_ID INT (10) AUTO_INCREMENT PRIMARY KEY,"+
								   "ORDER_STATUS_NAME VARCHAR (50) NOT NULL)";
								
								st.execute(sql13);
								System.out.println("Order_Status table Created");
						
						
		          
										
										
						
		            String sql15="CREATE TABLE IF NOT EXISTS ORDER_DETAILS"+
										"(ORDER_DETAILS_ID INT(10) AUTO_INCREMENT PRIMARY KEY,"+
										"ADDRESS VARCHAR(250) NOT NULL,ORDER_AMOUNT DOUBLE NOT NULL,"+
										"ORDER_DATE VARCHAR(50) NOT NULL,PAYMENT_TYPE VARCHAR(100) NOT NULL,"+
										"ORDER_STATUS_ID INT(10) NOT NULL,SHIPPING_METHOD VARCHAR(50) NOT NULL,"+
										"ODER_DISCOUNTS VARCHAR(50) NOT NULL,"+
										"email VARCHAR(50) NOT NULL,"+
										"foreign key(ORDER_STATUS_ID) references ORDER_STATUS(ORDER_STATUS_ID))";
										
										
										
										st.execute(sql15);
										System.out.println("Order table Created");
										
				String sql16="CREATE TABLE IF NOT EXISTS ORDER_CART"+
												"(ORDER_CART_ID INT (10) AUTO_INCREMENT PRIMARY KEY,"+
												"ORDER_ID INT (10) NOT NULL,"+
												"PRODUCT_ID INT(10) NOT NULL,"+
												"NAME VARCHAR(50) NOT NULL,"+
												"PRICE VARCHAR(50) NOT NULL,"+
												"QUANTITY INT(10) NOT NULL,"+
												"SUPPLIER_ID VARCHAR(50) NOT NULL,"+
												"foreign key(ORDER_ID) references ORDER_DETAILS(ORDER_DETAILS_ID))";
												
												st.execute(sql16);
												System.out.println("Order_Cart table Created");			
										
			           String sql17="CREATE TABLE IF NOT EXISTS REGISTERED_BUY"+
											    "(BUY_ID INT (10) AUTO_INCREMENT PRIMARY KEY, "+
									    		"PRODUCT_ID int NOT NULL,"+
												"PRODUCT_NAME VARCHAR(40) NOT NULL,"+
												"SHORT_DES VARCHAR(40) NOT NULL,"+
											    "SELLER VARCHAR(90) NOT NULL,"+
											    "DELIVERY_DATE VARCHAR(90) NOT NULL,"+
												"UNIT_PRICE DOUBLE NOT NULL, "+
												"QUANTITY INT NOT NULL, "+
												"TOTAL_PRICE DOUBLE NOT NULL, "+
												"SHIPPING_CHARGE DOUBLE NOT NULL, "+
												"SUB_TOTAL DOUBLE NOT NULL,email VARCHAR(40) NOT NULL)";
											    st.execute(sql17);
											    System.out.println("REGISTERED_BUY_TABLE CREATED");	
										
										
	                 String sql18="CREATE TABLE IF NOT EXISTS REVIEW"+
												"(CUSTOMER_ID INT (10) AUTO_INCREMENT PRIMARY KEY,"+
												 "PRODUCT_NAME VARCHAR(40) NOT NULL,"+
												"EMAIL VARCHAR(40) NOT NULL, RATING VARCHAR(40) NOT NULL, REVIEW VARCHAR(40) NOT NULL,"
												+ "DATE VARCHAR(40) NOT NULL, foreign key(CUSTOMER_ID) references CUSTOMER_INFO(CUSTOMER_ID))";
														
														
												st.execute(sql18);
												System.out.println("REVIEW created");
										
										
	                 String sql19="CREATE TABLE IF NOT EXISTS RETURNS"+
									"(RETURN_ID INT(10) AUTO_INCREMENT PRIMARY KEY,"+
									"ORDER_DETAILS_ID INT(10) NOT NULL UNIQUE,"+
									 "EMAIL VARCHAR(300) NOT NULL,"+
									 "PHONE_NO VARCHAR(300) NOT NULL,"+
									"REASON VARCHAR(300) NOT NULL,"+
									 "DETAILED_REASON VARCHAR(500) NOT NULL,"+
									"BANK_NAME VARCHAR(100) NOT NULL,"+"ACCOUNT_NUMBER VARCHAR(50) NOT NULL,"+
									"IFSC_CODE VARCHAR(50) NOT NULL,"+"BRANCH_CODE INT(10) NOT NULL,"+
								     "NAME VARCHAR(100) NOT NULL)";
															
									st.execute(sql19);
							System.out.println("Returns table created");
															

							String sql20="CREATE TABLE IF NOT EXISTS SUB_ADMIN_INFO"+
									
			    "(SL_NO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,FIRST_NAME VARCHAR(40) NOT NULL,"+"LAST_NAME VARCHAR(40) NOT NULL,"+
				"EMAIL_ID VARCHAR(40)  NOT NULL,"+"USER_NAME VARCHAR(40) NOT NULL,"+
			    "PASSWORD VARCHAR(40) NOT NULL,"+"CONFIRM_PASSWORD VARCHAR(40) NOT NULL,"+"IMAGE LONGBLOB NOT NULL)";
				
				st.execute(sql20);
				System.out.println("Sub_Admin table created");			
							
							

							
				String sql21="CREATE TABLE IF NOT EXISTS SUB_ADMIN_POWER (SL_NO INT NOT NULL PRIMARY KEY AUTO_INCREMENT,USER_NAME VARCHAR(40)"+
						" NOT NULL,Edit VARCHAR(40) NOT NULL,Delete1 VARCHAR(40) NOT NULL)";
						
						st.execute(sql21);
						System.out.println("Sub_Admin Power table created");		
							
						String sql22="CREATE TABLE IF NOT EXISTS PRODUCTS1"+
								 "(PRODUCT_ID int NOT NULL AUTO_INCREMENT  PRIMARY KEY,"+
								 "CATEGORY_ID int NOT NULL,"+
								 "SUBCATEGORY_ID int NOT NULL,"+
								 "BRAND_ID int NOT NULL , "+	 
								 "PRODUCT_NAME VARCHAR(40) NOT NULL,"+
								 "SHORT_DESCRIPTION VARCHAR(250) NOT NULL,"+
								 "DETAILED_DESCRIPTION VARCHAR(250) NOT NULL,"+
								 "PRODUCT_KEYWORDS VARCHAR(40) NOT NULL,"+
								 "SUPPLIER_ID VARCHAR(40) NOT NULL,"+
								 "SALES_PRICE DOUBLE NOT NULL,"+				 
								 "MSRP DOUBLE NOT NULL,"+
								 "DISCOUNTS VARCHAR(40) NOT NULL,"+
								 "WEIGHT VARCHAR(40) NOT NULL,"+
								 "PRODUCT_STATUS VARCHAR(40) NOT NULL,"+
								 "CASH_ON_DELIVERY VARCHAR(40) NOT NULL,"+
								 "WARRENTY VARCHAR(40) NOT NULL,"+
								 "SHIPPING_COST VARCHAR(40) NOT NULL,"+
								 "REPLACEMENT_WARRENTY VARCHAR(40) NOT NULL,"+
								 /*"IMAGE LONGBLOB NOT NULL,"+*/
								 "PRODUCT_UPDATED VARCHAR(45) NOT NULL,"+
								 "FOREIGN KEY(CATEGORY_ID) REFERENCES "+
								  "CATEGORY(CATEGORY_ID),FOREIGN KEY(SUBCATEGORY_ID) REFERENCES "+
								  "SUBCATEGORY(SUBCATEGORY_ID),FOREIGN KEY(BRAND_ID) REFERENCES "+
								  "BRAND(BRAND_ID) ON DELETE CASCADE)";		 
								
								st.execute(sql22);
								System.out.println("Products1 table created");

								
								String sql23="CREATE TABLE IF NOT EXISTS COLOR1"+
										"(COLOR_ID INT NOT NULL AUTO_INCREMENT ,"+
										"PRODUCT_ID INT NOT NULL,"+
										"COLOR VARCHAR(40) NOT NULL,"+
										"QUANTITY VARCHAR(40) NOT NULL,PRIMARY KEY(COLOR_ID),"+						
										"UNIQUE KEY (PRODUCT_ID, COLOR),"+
										"FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS1(PRODUCT_ID))";
										
								
								st.execute(sql23);
								System.out.println("Color1 TABLE created");
								
						String sql24="CREATE TABLE IF NOT EXISTS IMAGE1"+
								"(IMAGE_ID INT(10) AUTO_INCREMENT PRIMARY KEY,"+
								"PRODUCT_ID INT NOT NULL,"+
								"COLOR VARCHAR(40) NOT NULL,"+
								"FILE_NAME VARCHAR(40) NOT NULL,"+
								"IMAGE LONGBLOB NOT NULL,"+
								"FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS1(PRODUCT_ID))";
								
								
								st.execute(sql24);
								System.out.println("Image1 created");		

		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
						
			        
    }
    public void contextDestroyed(ServletContextEvent arg0)  { 
        
    }

	
}