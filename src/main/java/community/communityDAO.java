package community;

import java.util.List;
import java.util.Map;

public interface communityDAO {
	public int getCount();
	public List<communityDTO> getCommunitylist(Map<String,Integer> map);
}
