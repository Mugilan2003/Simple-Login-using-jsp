
public class Member {
	private String name,email,password,cpassword;
	
	public Member() {
		super();
	}
	public Member(String name, String email, String password, String cpassword) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.cpassword = cpassword;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	
	
}
