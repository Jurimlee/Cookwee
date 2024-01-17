package recipe;

public class ingredDTO {
	private int ingred_num;
	private int recipe_id ;
	private String ingred_name;
	private int code ;
	private String ingred_weight;
	private String codename;
	public int getIngred_num() {
		return ingred_num;
	}
	public void setIngred_num(int ingred_num) {
		this.ingred_num = ingred_num;
	}
	public int getRecipe_id() {
		return recipe_id;
	}
	public void setRecipe_id(int recipe_id) {
		this.recipe_id = recipe_id;
	}
	public String getIngred_name() {
		return ingred_name;
	}
	public void setIngred_name(String ingred_name) {
		this.ingred_name = ingred_name;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getIngred_weight() {
		return ingred_weight;
	}
	public void setIngred_weight(String ingred_weight) {
		this.ingred_weight = ingred_weight;
	}
	public String getCodename() {
		return codename;
	}
	public void setCodename(String codename) {
		this.codename = codename;
	}
	
}
