package com.min.dao;

import java.util.List;

import com.min.vo.EVO;

public interface ExerciseDAO {

	List<EVO> selectExerciseList(String category, String part) throws Exception;
	
	EVO selectExerciseOneList(String idx) throws Exception;
	
}
