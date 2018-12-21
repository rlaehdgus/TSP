package com.tsp.air;

import java.sql.SQLException;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		m_service.join_check(memberVo);
		
		return "redirect: /login.do";
	}
	
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		logger.info("join.do");
		
		return "Member/login";
	}
	
	@RequestMapping(value = "/login_check.do", method = RequestMethod.POST)
	public String login_check() {
		logger.info("login_check.do");
		
		return "redirect: /main.do";
	}
}
