package container.csc;

import java.sql.Timestamp;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import container.controller;
import csc.cscDAO;
import csc.cscDTO;
@Controller
public class cscwriteproController implements controller{
	@Resource(name="cscDao")
	private cscDAO cscDao;
	
	@RequestMapping("/cscwritepro")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		
		cscDTO dto = new cscDTO();
		dto.setId((String) session.getAttribute("memId"));
		dto.setCsc_title(request.getParameter("title"));
		dto.setCsc_comment(request.getParameter("comment"));
		dto.setCsc_regdate(new Timestamp(System.currentTimeMillis()));
		
		int result = cscDao.insertCsc(dto);
		request.setAttribute("result", result);
		return new ModelAndView("csc/cscwritepro");
	}
	
}
