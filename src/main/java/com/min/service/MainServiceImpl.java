package com.min.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.dao.MainDAO;
import com.min.vo.MVO;

@Service
public class MainServiceImpl implements MainService{

	
	@Autowired
	private MainDAO mainDAO;
	
	@Override
	public MVO selectLogin(MVO mvo) throws Exception {
		return mainDAO.selectLogin(mvo);
	}
}
