package login;

import org.apache.ibatis.session.SqlSession;

import mybatis.SqlMapClient;

public class loginDBBean implements loginDAO{
	public static SqlSession session = SqlMapClient.getSession();
	
	public int checkId(String id){
		return session.selectOne("Login.checkId",id);
	}
	
	public loginDTO getId(String id) {
		return session.selectOne("Login.getUser",id);
	}
	public int check(String id , String passwd) {
		int result =0;
		if(checkId(id)!=0) {
			loginDTO dto = getId(id);
			if(passwd.equals(dto.getPasswd() ) ) {
				result = 1;
			}else {
				result= 0;
			}
		}else {
			result = -1;
			
		}return result;
	}
	public int insertMember(loginDTO dto) {
		return session.insert("Login.insertMember",dto);
		}
	
	public int modifyMember(loginDTO dto) {
	    return session.update("Login.modifyMember", dto);
	}
	public int deleteMember(String id) {
		return session.delete("Login.deleteMember", id);
	}
}
