package csc;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


import mybatis.SqlMapClient;

public class cscDBBean implements cscDAO{
	private SqlSession session = SqlMapClient.getSession();
	
	public int getCount() {
		return session.selectOne("Csc.getCount");
	}
	
	public List<cscDTO> getCsclist(Map<String,Integer> map){
		return session.selectList("Csc.getCsclist",map);
	}//글목록에서 작성한 글들 가져오기
	
	public cscDTO getCscArticle(int num) {
		return session.selectOne("Csc.getCscArticle",num);
	}//글 가져오기
	
	public int insertCsc(cscDTO dto) {
		return session.insert("Csc.insertCsc",dto);
	}

}

