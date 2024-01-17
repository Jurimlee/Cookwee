package login;

import java.sql.Timestamp;

public class loginDTO {
	private String id;
	private String passwd;
	private String name;
	private String address;
	private int point;
	private Timestamp reg_date;
	private int authority_num;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getAuthority_num() {
		return authority_num;
	}
	public void setAuthority_num(int authority_num) {
		this.authority_num = authority_num;
	}

}


