package com.tsp.air.mapper;

import java.sql.SQLException;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.tsp.air.dto.MemberVO;

@Repository
public class MemberMapper {
	
	private static final String Namespace = "com.tsp.air.mapper.MemberMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	public void addMember(MemberVO memberVo) throws SQLException {
		sqlSession.insert(Namespace+".addMember", memberVo);
	}
	
	public MemberVO login_check(MemberVO memberVo) throws SQLException {
		return sqlSession.selectOne(Namespace+".login_check", memberVo);
	}
	
	public void member_update(MemberVO memberVo) throws SQLException {
		sqlSession.update(Namespace+".member_update", memberVo);
	}
}