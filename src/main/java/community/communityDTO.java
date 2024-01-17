package community;

import java.sql.Timestamp;

public class communityDTO {
	private int cm_num;
	private String id;
	private int cate_num;
	private String cm_title;
	private String cm_comment;
	private int cm_hit;
	private Timestamp cm_regdate;
	private String cate_name;
	
	public int getCm_num() {
		return cm_num;
	}
	public void setCm_num(int cm_num) {
		this.cm_num = cm_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCate_num() {
		return cate_num;
	}
	public void setCate_num(int cate_num) {
		this.cate_num = cate_num;
	}
	public String getCm_title() {
		return cm_title;
	}
	public void setCm_title(String cm_title) {
		this.cm_title = cm_title;
	}
	public String getCm_comment() {
		return cm_comment;
	}
	public void setCm_comment(String cm_comment) {
		this.cm_comment = cm_comment;
	}
	public int getCm_hit() {
		return cm_hit;
	}
	public void setCm_hit(int cm_hit) {
		this.cm_hit = cm_hit;
	}
	public Timestamp getCm_regdate() {
		return cm_regdate;
	}
	public void setCm_regdate(Timestamp cm_regdate) {
		this.cm_regdate = cm_regdate;
	}
	public String getCate_name() {
		return cate_name;
	}
	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
	
	
}
