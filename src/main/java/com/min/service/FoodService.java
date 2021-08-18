package com.min.service;

import java.util.List;

import com.min.vo.FVO;

public interface FoodService {

	List<FVO> selectFoodList(String f_category) throws Exception;
}
