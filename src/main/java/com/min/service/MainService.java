package com.min.service;

import com.min.vo.MVO;

public interface MainService {

	MVO selectLogin(MVO mvo) throws Exception;
	
	int insertMembers(MVO mvo) throws Exception;
}
