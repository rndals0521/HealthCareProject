package com.min.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.dao.FoodDAO;
import com.min.vo.FVO;

@Service
public class FoodServiceImpl implements FoodService{

	
	@Autowired
	private FoodDAO foodDAO;
	
	@Override
	public List<FVO> selectFoodList(String f_category) throws Exception {
		return foodDAO.selectFoodList(f_category);
	}
	
}
