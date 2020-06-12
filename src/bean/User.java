package bean;

public class User {
	private int user_id;
	private String user_created;
	private String user_name;
	private String user_pass;
	private String user_birth;
	private String user_mail;
	private String sex;
	private String user_tel;
	private String user_address;
	private boolean valid_user;
	private boolean user_auth;

	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int useri_id) {
		this.user_id = useri_id;
	}
	public String getUser_created() {
		return user_created;
	}
	public void setUser_created(String user_created) {
		this.user_created = user_created;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getUser_mail() {
		return user_mail;
	}
	public void setUser_mail(String user_mail) {
		this.user_mail = user_mail;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public boolean isValid_user() {
		return valid_user;
	}
	public void setValid_user(boolean valid_user) {
		this.valid_user = valid_user;
	}
	public boolean isUser_auth() {
		return user_auth;
	}
	public void setUser_auth(boolean user_auth) {
		this.user_auth = user_auth;
	}


}
