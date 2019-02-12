package com.tsp.air;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tsp.air.dto.BoardVO;
import com.tsp.air.service.BoardService;

@Controller
public class BoardController {

	@Inject
	private BoardService b_service;
	
	@RequestMapping(value = "/tsp_board_list.do", method = RequestMethod.GET)
	public ModelAndView tsp_board() throws Exception {
		
		List<BoardVO> list = b_service.AllList();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("map", map);
		mav.setViewName("Board/tsp_board_list");
		
		return mav;
	}
	
	@RequestMapping(value = "/board_write.do", method = RequestMethod.GET)
	public String board_write(@ModelAttribute("boardVo") BoardVO boardVo) {
		
		return "Board/board_write";
	}
	
	@RequestMapping(value = "/board_view.do", method = RequestMethod.GET)
	public String board_view(@ModelAttribute("boardVo") BoardVO boardVo, Model model) throws Exception {
		
		boardVo = b_service.board_view(boardVo);
		
		model.addAttribute("view", boardVo);
		
		return "Board/board_view";
	}
}
