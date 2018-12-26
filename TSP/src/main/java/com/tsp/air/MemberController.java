package com.tsp.air;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tsp.air.dto.MemberVO;
import com.tsp.air.service.MemberService;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
	private MemberService m_service;

	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join() {
		logger.info("join.do");
		
		return "Member/join";
	}
	
	@RequestMapping(value = "/join_check.do", method = RequestMethod.POST)
	public String join_check(@ModelAttribute("memberVo") MemberVO memberVo, Model model) throws SQLException {
		logger.info("join_check.do");
		
		m_service.addMember(memberVo);
		
		return "redirect: /login.do";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		logger.info("join.do");
		
		return "Member/login";
	}
	
	@RequestMapping(value = "/login_check.do", method = RequestMethod.POST)
	public String login_check(@ModelAttribute("memberVo") MemberVO memberVo, HttpSession session, HttpServletResponse response) throws SQLException, IOException {
		logger.info("login_check.do");
		String returnUrl = "";
		
		/* 만약 세션 값이 있다면 초기화 */
		if(session.getAttribute("member") != null) {
			session.invalidate();
		}
		
		memberVo = m_service.member_info(memberVo);
		
		/* 만약 로그인 값이 있다면 로그인 성공 */
		if(memberVo != null) {
			session.setAttribute("member", memberVo);
			
			/*response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
			
            out.println("<script>alert('신규 가입을 축하드립니다!');</script>");
            out.flush();*/
            
            returnUrl = "redirect:/main.do";
		}else {
			/*response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
			
			out.println("<script>alert('아이디 또는 패스워드가 맞지 않습니다.\n 다시 입력해주세요.');</script>");
            out.flush();*/
            
            returnUrl = "redirect:/login.do";
		}
		
		return returnUrl;
	}
	
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET) 
	public String logout(HttpSession session) throws SQLException {
		
		session.invalidate();
		
		return "redirect:/main.do";
	}
	
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String mypage(@ModelAttribute("memberVo") MemberVO memberVo) {
		
		return "Member/mypage";
	}
	
	@RequestMapping(value = "/mypage_update.do", method = RequestMethod.POST)
	public String mypage_update(@ModelAttribute("memberVo") MemberVO memberVo, HttpServletResponse response, HttpSession session) throws SQLException, IOException {
		String returnUrl = "";
		
		if(memberVo == null) {
			returnUrl = "redirect:/main.do";
		} else {
			m_service.member_update(memberVo);
			
			memberVo = m_service.member_info(memberVo);
			
			session.setAttribute("member", memberVo);
			
			returnUrl = "redirect:/mypage.do";
		}
		
		return returnUrl;
	}
}
