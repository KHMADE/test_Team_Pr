package member.model.service;

import static common.JDBCTemplate.*;
import java.sql.*;
import java.util.*;

import member.model.dao.MemberDAO;
import member.model.vo.Member;

public class MemberService {
	public MemberService() {}
	
	public Member selectMember(String id, String pwd){
		Connection con = getConnection();
		Member m = new MemberDAO().selectMember(con, id, pwd);
		
		return m;
	}

}
