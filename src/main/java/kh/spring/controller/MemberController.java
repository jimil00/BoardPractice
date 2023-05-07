package kh.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.dto.MemberDTO;
import kh.spring.service.MemberService;

@Controller
@RequestMapping("/member/")
public class MemberController {

	@Autowired
	private MemberService service;
	
	/* 회원가입 페이지로 이동 */
	@RequestMapping("toSignup")
	public String toSignup() {
		System.out.println("에베베");	

		return "member/signup";
	}
	
	/* 회원가입 */
	@RequestMapping(value="signUp")
	public String signUp(MemberDTO dto) {
		service.signUp(dto);
		return "redirect:/";
	}
}
