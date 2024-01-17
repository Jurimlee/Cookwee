package container.mypage;

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
public class modifyproController implements controller{
	@Resource(name="loginDao")
	private loginDAO loginDao;
	
	@RequestMapping("/modifypro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		loginDTO dto = new loginDTO();
	    dto.setPasswd(request.getParameter("passwd"));
	    
	    String address = new String(request.getParameter("address").getBytes("ISO-8859-1"), "UTF-8");
	    dto.setAddress(address);

	    dto.setId((String) request.getSession().getAttribute("memId"));

	    int result = loginDao.modifyMember(dto);

	    request.setAttribute("result", result);
		
		return new ModelAndView("mypage/modifypro");
	}

}
