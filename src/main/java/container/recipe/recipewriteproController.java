package container.recipe;

import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import container.controller;
import recipe.ingredDTO;
import recipe.recipeDAO;
import recipe.recipeDTO;
import recipe.recipeproDTO;
@Controller
public class recipewriteproController implements controller{
	@Resource(name="recipeDao")
	private recipeDAO recipeDao;
	
	@RequestMapping("/recipewritepro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		recipeDTO dto = new recipeDTO();
		dto.setRecipe_title(request.getParameter("recipetitle"));
		dto.setRecipe_image(request.getParameter("image_upload"));
		dto.setRecipe_summary(request.getParameter("recipe_intro"));
		dto.setRecipe_regdate(new Timestamp( System.currentTimeMillis() ) );
		
		ingredDTO idto = new ingredDTO();
		idto.setIngred_name(request.getParameter("ingredient_name"));
		idto.setIngred_weight(request.getParameter("ingredient_amount"));
		
		ingredDTO sdto = new ingredDTO();
		sdto.setIngred_name(request.getParameter("ingredient_name"));
		sdto.setIngred_weight(request.getParameter("ingredient_amount"));
		
		recipeproDTO rdto = new recipeproDTO();
		rdto.setPro_comment(request.getParameter("step_description"));
		rdto.setPro_image(request.getParameter("step_image"));
		
		int result1 = recipeDao.insertRecipe(dto);
		int result2 = recipeDao.insertIngred(idto);
		int result3 = recipeDao.insertRecipePro(rdto);
		int result4 = recipeDao.insertSeasoning(sdto);
		
		request.setAttribute("result1", result1);
		request.setAttribute("result2", result2);
		request.setAttribute("result3", result3);
		request.setAttribute("result4", result4);
		
		return new ModelAndView("recipe/recipewritepro");
	}

}
