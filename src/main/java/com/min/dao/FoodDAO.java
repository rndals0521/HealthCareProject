package com.min.dao;

import java.util.List;

import com.min.vo.FVO;

public interface FoodDAO {

	List<FVO> selectFoodList(String f_category) throws Exception;
	
}
