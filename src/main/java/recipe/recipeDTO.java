package recipe;

import java.sql.Timestamp;

public class recipeDTO {
	private int recipe_id;
	private String recipe_title;
	private String recipe_summary;
	private Timestamp recipe_regdate;
	private String recipe_image;
	private int recipe_hit;
	private String id;
	
	public int getRecipe_id() {
		return recipe_id;
	}
	public void setRecipe_id(int recipe_id) {
		this.recipe_id = recipe_id;
	}
	public String getRecipe_title() {
		return recipe_title;
	}
	public void setRecipe_title(String recipe_title) {
		this.recipe_title = recipe_title;
	}
	public String getRecipe_summary() {
		return recipe_summary;
	}
	public void setRecipe_summary(String recipe_summary) {
		this.recipe_summary = recipe_summary;
	}
	public Timestamp getRecipe_regdate() {
		return recipe_regdate;
	}
	public void setRecipe_regdate(Timestamp recipe_regdate) {
		this.recipe_regdate = recipe_regdate;
	}
	public String getRecipe_image() {
		return recipe_image;
	}
	public void setRecipe_image(String recipe_image) {
		this.recipe_image = recipe_image;
	}
	public int getRecipe_hit() {
		return recipe_hit;
	}
	public void setRecipe_hit(int recipe_hit) {
		this.recipe_hit = recipe_hit;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
