package container.mypage;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import container.controller;
import login.loginDAO;

@Controller
public class deleteproController implements controller{

	@Resource( name="loginDao" )
	private loginDAO loginDao;
	
	@RequestMapping( "/deletepro" )
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = (String) request.getSession().getAttribute( "memId" );
		
		int result = loginDao.deleteMember(id);
		request.setAttribute( "result", result );
		
		return new ModelAndView( "mypage/deletepro" );
				
	}

}
