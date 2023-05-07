package kh.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.spring.dao.MemberDAO;
import kh.spring.dto.MemberDTO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO dao;
	
	public void signUp(MemberDTO dto) {
		dao.signUp(dto);
	}
}
