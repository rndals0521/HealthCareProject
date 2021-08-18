package com.min.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.vo.FVO;

@Repository
public class FoodDAOImpl implements FoodDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<FVO> selectFoodList(String f_category) throws Exception {
		return sqlSessionTemplate.selectList("f_list",f_category);
	}
	
}
