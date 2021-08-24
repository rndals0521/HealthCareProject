package com.min.dao;

import com.min.vo.MVO;

public interface MainDAO {
	
	MVO selectLogin(MVO mvo) throws Exception;
	
	int insertMembers(MVO mvo) throws Exception;
}
