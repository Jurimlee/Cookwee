package csc;

import java.util.List;
import java.util.Map;

public interface cscDAO {
	public int getCount();
	public List<cscDTO> getCsclist(Map<String,Integer> map);
	public cscDTO getCscArticle(int num);
	public int insertCsc(cscDTO dto);
}
