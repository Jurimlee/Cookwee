package recipe;

import java.util.List;
import java.util.Map;

public interface recipeDAO {
	public List<recipeDTO> getRecipes(Map<String,Integer> map);
	public int getCount();
	public recipeDTO getRecipe(int recipe_id);
	public List<ingredDTO> getIngred(int recipe_id);
	public List<recipeproDTO> getRecipePro(int recipe_id);
	public List<ingredDTO> getSeasoning(int recipe_id);
	
	public int insertRecipe(recipeDTO dto);
	public int insertIngred(ingredDTO dto);
	public int insertSeasoning(ingredDTO dto);
	public int insertRecipePro(recipeproDTO dto);
}
