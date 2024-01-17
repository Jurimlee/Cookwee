package csc;

import java.sql.Timestamp;

public class cscDTO {
	private int csc_num;
	private String id;
	private String csc_title;
	private String csc_comment;
	private Timestamp csc_regdate;
	
	public int getCsc_num() {
		return csc_num;
	}
	public void setCsc_num(int csc_num) {
		this.csc_num = csc_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCsc_title() {
		return csc_title;
	}
	public void setCsc_title(String csc_title) {
		this.csc_title = csc_title;
	}
	public String getCsc_comment() {
		return csc_comment;
	}
	public void setCsc_comment(String csc_comment) {
		this.csc_comment = csc_comment;
	}
	public Timestamp getCsc_regdate() {
		return csc_regdate;
	}
	public void setCsc_regdate(Timestamp csc_regdate) {
		this.csc_regdate = csc_regdate;
	}
	
	
	
	
}
