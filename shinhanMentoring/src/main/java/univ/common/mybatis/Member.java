package univ.common.mybatis;
//DAO�������� ����
public class Member {
	private String USER_ID;
	private String USER_NAME;
	private String USER_PHONE;
	private String USER_PASSWORD;
	private String USER_EMAIL;
	private String USER_EMAIL_DOMAIN;
	private String USER_JOB;
	
	private String PRO_ID;
	public String getPRO_ID() {
		return PRO_ID;
	}

	public void setPRO_ID(String pRO_ID) {
		PRO_ID = pRO_ID;
	}

	public String getUSER_PASSWORD() {
		return USER_PASSWORD;
	}

	public void setUSER_PASSWORD(String uSER_PASSWORD) {
		USER_PASSWORD = uSER_PASSWORD;
	}

	public String getUSER_EMAIL() {
		return USER_EMAIL;
	}

	public void setUSER_EMAIL(String uSER_EMAIL) {
		USER_EMAIL = uSER_EMAIL;
	}

	public String getUSER_EMAIL_DOMAIN() {
		return USER_EMAIL_DOMAIN;
	}

	public void setUSER_EMAIL_DOMAIN(String uSER_EMAIL_DOMAIN) {
		USER_EMAIL_DOMAIN = uSER_EMAIL_DOMAIN;
	}

	public String getUSER_JOB() {
		return USER_JOB;
	}

	public void setUSER_JOB(String uSER_JOB) {
		USER_JOB = uSER_JOB;
	}



	
	
	public String getUSER_ID() {
		return USER_ID;
	}

	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}

	public String getUSER_NAME() {
		return USER_NAME;
	}

	public void setUSER_NAME(String uSER_NAME) {
		USER_NAME = uSER_NAME;
	}

	public String getUSER_PHONE() {
		return USER_PHONE;
	}

	public void setUSER_PHONE(String uSER_PHONE) {
		USER_PHONE = uSER_PHONE;
	}

	

	public Member(){
		
	}
	
}
