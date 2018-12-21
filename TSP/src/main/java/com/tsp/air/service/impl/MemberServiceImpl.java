package com.tsp.air.service.impl;

import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tsp.air.dto.MemberVO;
import com.tsp.air.mapper.MemberMapper;
import com.tsp.air.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberMapper m_mapper;
	
	@Override
	public void join_check(MemberVO memberVo) throws SQLException {
		m_mapper.join_check(memberVo);
	}
	
	public MemberVO login_check(MemberVO memberVo) throws SQLException {
		return m_mapper.login_check(memberVo);
	}

}
