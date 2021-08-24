package com.min.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.vo.MVO;

@Repository
public class MainDAOImpl implements MainDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public MVO selectLogin(MVO mvo) throws Exception {
		return sqlSessionTemplate.selectOne("login",mvo);
	}
	
	@Override
	public int insertMembers(MVO mvo) throws Exception {
		return sqlSessionTemplate.insert("join",mvo);
	}
	
}
