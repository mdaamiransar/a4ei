package bean;


	public class login_Bean1 {
		
		private String COMPANY_NAME;
		private String CREATE_PASSWORD;
		public login_Bean1(String cOMPANY_NAME, String cREATE_PASSWORD) {
		
			COMPANY_NAME = cOMPANY_NAME;
			CREATE_PASSWORD = cREATE_PASSWORD;
		}
		public String getCOMPANY_NAME() {
			return COMPANY_NAME;
		}
		public void setCOMPANY_NAME(String cOMPANY_NAME) {
			COMPANY_NAME = cOMPANY_NAME;
		}
		public String getCREATE_PASSWORD() {
			return CREATE_PASSWORD;
		}
		public void setCREATE_PASSWORD(String cREATE_PASSWORD) {
			CREATE_PASSWORD = cREATE_PASSWORD;
		}
	}