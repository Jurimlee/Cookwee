package recipe;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlMapClient;

public class recipeDBBean implements recipeDAO{
	public static SqlSession session = SqlMapClient.getSession();
	
	public List<recipeDTO> getRecipes(Map<String,Integer> map){
		return session.selectList("Recipe.getRecipes",map);
	}//레시피 리스트 불러오기
	
	public int getCount() {
		return session.selectOne("Recipe.getCount");
	}//레시피 갯수 파악
	
	public recipeDTO getRecipe(int recipe_id) {
		return session.selectOne("Recipe.getRecipe", recipe_id);
	}//이미지 불러오기
	
	public List<ingredDTO> getIngred(int recipe_id) {
		return session.selectList("Recipe.getIngred",recipe_id);
	}//주재료불러오기
	
	public List<ingredDTO> getSeasoning(int recipe_id) {
		return session.selectList("Recipe.getSeasoning",recipe_id);
	}//양념불러오기
	
	public List<recipeproDTO> getRecipePro(int recipe_id) {
		return session.selectList("Recipe.getRecipePro",recipe_id);
	}//조리과정불러오기
	
	public int insertRecipe(recipeDTO dto) {
		return session.insert("Recipe.insertRecipe",dto);
	}
	
	public int insertIngred(ingredDTO dto) {
		return session.insert("Recipe.insertIngred",dto);
	}
	
	public int insertSeasoning(ingredDTO dto) {
		return session.insert("Recipe.insertSeasoning");
	}
	
	public int insertRecipePro(recipeproDTO dto) {
		return session.insert("Recipe.insertRecipePro",dto);
	}

}
