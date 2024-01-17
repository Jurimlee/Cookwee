package container.csc;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import community.communityDTO;
import container.controller;
import csc.cscDAO;
import csc.cscDTO;
@Controller
public class cscmainController implements controller{
	@Resource(name="cscDao")
	private cscDAO cscDao;
	
	@RequestMapping("/cscmain")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int count = cscDao.getCount();
		
		if(count > 0) {
			Map<String,Integer> map = new HashMap<String,Integer>();
			List<cscDTO> dtos = cscDao.getCsclist(map);
			request.setAttribute("dtos", dtos);
		}
		
		request.setAttribute("count",count);
		
		return new ModelAndView("csc/cscmain");
	}

}
