package com.tsp.air;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join() {
		logger.info("join.do");
		
		return "Member/join";
	}
	
	@RequestMapping(value = "/join_check.do", method = RequestMethod.POST)
	public String join_check() {
		logger.info("join_check.do");
		
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
