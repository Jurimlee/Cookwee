package container.community;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import community.communityDAO;
import community.communityDTO;
import container.controller;
@Controller
public class communitymainController implements controller{
	
	@Resource(name="communityDao")
	
	private communityDAO communityDao;
	@RequestMapping("/communitymain")
	@Override
	public ModelAndView process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int pageBlock = 3;		//한 번에 출력할 페이지 번호 개수
		int pageSize = 10;		//한페이지에 출력할 글 수
		int start = 0;			//페이지 첫 글
		int end = 0;			//페이지 마지막 글
		String pageNum = null;	//현재 페이지
		int currentPage = 0;	//계산용 현재 페이지
		int number = 0;			//출력용 글번호
		int startPage = 0;		//출력할 페이지 시작 번호
		int endPage = 0;		//출력할 페이지 끝 번호
		int pageCount = 0;		//전체 페이지 개수

		
		int count = communityDao.getCount();	

		pageNum = request.getParameter("pageNum");
		if(pageNum == null){
			pageNum = "1";
		}
		currentPage = Integer.parseInt(pageNum);
		
		start = (currentPage -1) * pageSize +1; //ex) (5-1) * 10 + 1 =41
		end = start + pageSize - 1 ;			//41 + 10 - 1 = 50
		
		if(count < end){
			end = count;
		}
		
		number = count - (currentPage-1)*pageSize; //글 50개 50-(2-1)*10 = 40
				
		pageCount = (count/pageSize) + (count%pageSize>0 ? 1:0);
		startPage = (currentPage / pageBlock)*pageBlock + 1; //(15/10)*10+1 11
		if(currentPage%pageBlock==0){
			startPage -= pageBlock;
		}
		endPage = (startPage + pageBlock) - 1 ; 			 //11 + 10 -1
		if(pageCount<endPage){
			endPage = pageCount;
		}
		
		if(count > 0) {
			Map<String,Integer> map = new HashMap<String,Integer>();
			map.put("start", start);
			map.put("end", end);
			List<communityDTO> dtos = communityDao.getCommunitylist(map);
			
			request.setAttribute("dtos", dtos);
		}

		request.setAttribute("count",count);
		request.setAttribute("number",number);
		request.setAttribute("pageNum",pageNum);
		request.setAttribute("pageBlock",pageBlock);		//한 번에 출력할 페이지 번호 개수
		request.setAttribute("currentPage",currentPage);	//계산용 현재 페이지
		request.setAttribute("startPage",startPage);		//출력할 페이지 시작 번호
		request.setAttribute("endPage",endPage);		//출력할 페이지 끝 번호
		request.setAttribute("pageCount",pageCount);		//전체 페이지 개수
		
		return new ModelAndView("community/communitymain");
	}
}
