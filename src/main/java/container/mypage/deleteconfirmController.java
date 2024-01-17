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
public class deleteconfirmController implements controller{
	@Resource( name="loginDao" )
	private loginDAO loginDao;
	
	@RequestMapping("/deleteconfirm")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = (String) request.getSession().getAttribute( "memId" );
		String passwd = request.getParameter( "passwd" );

		int result = loginDao.check(id, passwd);
		
		request.setAttribute("result", result );
	
		if( result == 1 ) {
			// 비밀번호가 같다
			loginDTO dto = loginDao.getId( id );
			request.setAttribute( "dto", dto );
		}
		return new ModelAndView("mypage/deleteconfirm");
	}

}
