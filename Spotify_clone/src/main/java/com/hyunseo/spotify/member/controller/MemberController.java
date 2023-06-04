package com.hyunseo.spotify.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hyunseo.spotify.member.model.service.MemberService;
import com.hyunseo.spotify.member.model.vo.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping("loginForm.me")
	public String loginMemberForm() {
		
		return "member/loginForm";
	}
	
	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		
		// 회원가입 페이지를 포워딩
		// 포워딩 하고자하는 경로 : /WEB-INF/views/member/memberEnrollForm.jsp
		// 접두어와 접미어를 제외한 경로 : member/memberEnrollForm
		return "member/memberEnrollForm";
	}
	
	@RequestMapping("insert.me")
	public String insertMember(Member m, Model model, HttpSession session) {
		
		int result = memberService.insertMember(m);
		
		if(result > 0) { // 성공
			
			// 일회성 알람 문구
			session.setAttribute("alertMsg", "성공적으로 회원가입이 되었습니다.");

			return "member/loginForm";
		}
		else { 
			
			model.addAttribute("errorMsg", "회원가입 실패");
			
			return "member/memberEnrollForm";
		}
	}
	
}
