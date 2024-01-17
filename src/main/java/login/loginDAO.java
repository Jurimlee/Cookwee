package login;

public interface loginDAO {
	public int checkId(String id);
	public loginDTO getId(String id);
	public int check(String id , String passwd);
	public int insertMember(loginDTO dto);
	public int modifyMember(loginDTO dto);
	public int deleteMember(String id);
}
