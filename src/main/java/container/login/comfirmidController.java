package container.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import container.controller;
import login.loginDAO;

@Controller
public class comfirmidController implements controller{
	
	@Resource(name="loginDao")
	private loginDAO loginDao;
	
	@RequestMapping("/confirmid")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		int result = loginDao.checkId(id);
		
		request.setAttribute("result", result);
		request.setAttribute("id", id);
		return new ModelAndView("login/confirmid");
	}

}
