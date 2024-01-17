package community;

import java.sql.Timestamp;

public class cmreplyDTO {
	private int cmreply_num;
	private int cm_num;
	private String cmreply_comment;
	private Timestamp cmreply_regdate;
	
	public int getCmreply_num() {
		return cmreply_num;
	}
	public void setCmreply_num(int cmreply_num) {
		this.cmreply_num = cmreply_num;
	}
	public int getCm_num() {
		return cm_num;
	}
	public void setCm_num(int cm_num) {
		this.cm_num = cm_num;
	}
	public String getCmreply_comment() {
		return cmreply_comment;
	}
	public void setCmreply_comment(String cmreply_comment) {
		this.cmreply_comment = cmreply_comment;
	}
	public Timestamp getCmreply_regdate() {
		return cmreply_regdate;
	}
	public void setCmreply_regdate(Timestamp cmreply_regdate) {
		this.cmreply_regdate = cmreply_regdate;
	}
	
	
}
