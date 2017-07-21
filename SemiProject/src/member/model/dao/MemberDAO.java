package member.model.dao;

import java.sql.*;
import static common.JDBCTemplate.*;
import member.model.vo.Member;

public class MemberDAO {

	public MemberDAO() {}

	public Member selectMember(Connection con, String id, String pwd) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member m = null;
		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PASSWD = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			rset = pstmt.executeQuery();
			if(rset.next()){
				m = new Member(id,pwd,rset.getString("NAME"),rset.getString("EMAIL"),
						rset.getString("GENDER"),rset.getInt("AGE"),rset.getString("PHONE"),
						rset.getString("ADDRESS"),rset.getDate("ENROLL_DATE"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}

}
