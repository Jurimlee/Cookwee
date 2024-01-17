package container.csc;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import container.controller;
import csc.cscDAO;
import csc.cscDTO;

@Controller
public class cscwriteinfoController implements controller{
	@Resource(name="cscDao")
	private cscDAO cscDao;
	
	@RequestMapping("/cscwriteinfo")
	
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int num = Integer.parseInt(request.getParameter("num"));
		
		cscDTO dto = cscDao.getCscArticle(num);
		
		request.setAttribute("dto", dto);
		return new ModelAndView("csc/cscwriteinfo");
	}

}
