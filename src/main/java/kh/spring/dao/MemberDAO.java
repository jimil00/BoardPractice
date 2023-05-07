package kh.spring.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.spring.dto.MemberDTO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession db;
	
	public int signUp(MemberDTO dto) {
		return db.insert("Member.signUp", dto);
	}
	
}
