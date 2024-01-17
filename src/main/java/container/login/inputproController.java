package container.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import container.controller;
import login.loginDAO;
import login.loginDTO;

@Controller
public class inputproController implements controller{
	@Resource(name="loginDao")
	private loginDAO loginDao;
	
	@RequestMapping("/inputpro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		loginDTO dto = new loginDTO();
		dto.setId(request.getParameter("id"));
		dto.setPasswd(request.getParameter("passwd"));
		dto.setName(request.getParameter("name"));
		dto.setAddress(request.getParameter("address"));
		
		int result = loginDao.insertMember(dto);
		request.setAttribute("result", result);
		return new ModelAndView("login/inputpro");
	}

}
