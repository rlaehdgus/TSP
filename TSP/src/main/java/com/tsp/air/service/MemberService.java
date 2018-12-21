package com.tsp.air.service;

import java.sql.SQLException;

import com.tsp.air.dto.MemberVO;

public interface MemberService {
	
	public void join_check(MemberVO memberVo) throws SQLException;

}
