package container;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public class DefaultController implements controller{

	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("result", "처리할 수 없는 요청입니다.");
		return new ModelAndView("pathError/PathError");
	}

}
