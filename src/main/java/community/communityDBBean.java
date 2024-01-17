package community;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlMapClient;

public class communityDBBean implements communityDAO {
	private SqlSession session = SqlMapClient.getSession();
	
	public int getCount() {
		return session.selectOne("Community.getCount");
	}
	
	public List<communityDTO> getCommunitylist(Map<String,Integer> map){
		return session.selectList("Community.getCommunitylist",map);
	}//글목록에서 작성한 글들 가져오기
}
