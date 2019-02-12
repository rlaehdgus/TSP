package com.tsp.air.mapper;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tsp.air.dto.BoardVO;

@Repository
public class BoardMapper {

	@Inject
	private SqlSession sqlSession;
	
	private static final String NameSpace = "com.tsp.air.mapper.BoardMapper";
	
	public List<BoardVO> AllList() throws Exception {
		return sqlSession.selectList(NameSpace + ".AllList");
	}
	
	public BoardVO board_view(BoardVO boardVo) throws Exception {
		return sqlSession.selectOne(NameSpace + ".board_view", boardVo);
	}
}
