package container.recipe;


import java.util.List;


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
public class recipeinfoController implements controller{
	@Resource(name="recipeDao")
	private recipeDAO recipeDao;
	
	@RequestMapping("/recipeinfo")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int recipe_id = Integer.parseInt(request.getParameter("recipe_id"));
		
		
		recipeDTO dto = recipeDao.getRecipe(recipe_id);
		List<ingredDTO> idto = recipeDao.getIngred(recipe_id);
		List<ingredDTO> sdto = recipeDao.getSeasoning(recipe_id);
		List<recipeproDTO> cdto = recipeDao.getRecipePro(recipe_id);

		request.setAttribute("dto", dto);
		request.setAttribute("idto", idto);
		request.setAttribute("sdto", sdto);
		request.setAttribute("cdto", cdto);
		
		return new ModelAndView("recipe/recipeinfo");
	}

}
