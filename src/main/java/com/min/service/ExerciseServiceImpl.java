package com.min.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.dao.ExerciseDAO;
import com.min.vo.EVO;

@Service
public class ExerciseServiceImpl implements ExerciseService{

	@Autowired
	private ExerciseDAO exerciseDAO;
	
	@Override
	public List<EVO> selectExerciseList(String category,String part) throws Exception {
		return exerciseDAO.selectExerciseList(category,part);
	}
	
	
	@Override
	public EVO selectExerciseOneList(String eid) throws Exception {
		return exerciseDAO.selectExerciseOneList(eid);
	}
}
