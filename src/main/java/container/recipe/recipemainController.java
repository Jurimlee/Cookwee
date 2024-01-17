package container.recipe;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import container.controller;
import recipe.recipeDAO;
import recipe.recipeDTO;
@Controller
public class recipemainController implements controller{
	@Resource(name="recipeDao")
	private recipeDAO recipeDao;
	
	@RequestMapping("/recipemain")	
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int count = recipeDao.getCount();//레시피 갯수 조회
		
		if(count > 0) {
			Map<String,Integer> map = new HashMap<String,Integer>();
			List<recipeDTO> dtos = recipeDao.getRecipes(map);
			request.setAttribute("dtos", dtos);	
		}

		request.setAttribute("count",count);
		return new ModelAndView("recipe/recipemain");
	}
	
}
