package com.tsp.air.service;

import java.util.List;

import com.tsp.air.dto.BoardVO;

public interface BoardService {
	
	public List<BoardVO> AllList() throws Exception;
	
	public BoardVO board_view(BoardVO boardVo) throws Exception;
}
