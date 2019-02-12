package com.tsp.air.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tsp.air.dto.BoardVO;
import com.tsp.air.mapper.BoardMapper;
import com.tsp.air.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardMapper b_mapper;
	
	@Override
	public List<BoardVO> AllList() throws Exception {
		
		return b_mapper.AllList();
	}

	@Override
	public BoardVO board_view(BoardVO boardVo) throws Exception {
		
		return b_mapper.board_view(boardVo);
	}
	
}
