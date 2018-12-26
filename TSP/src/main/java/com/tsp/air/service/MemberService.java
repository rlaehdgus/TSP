package com.tsp.air.service;

import java.sql.SQLException;

import com.tsp.air.dto.MemberVO;

public interface MemberService {
	
	public void addMember(MemberVO memberVo) throws SQLException;

	public MemberVO member_info(MemberVO memberVo) throws SQLException;
	
	public void member_update(MemberVO memberVo) throws SQLException;
}
