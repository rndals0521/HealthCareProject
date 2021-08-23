package com.min.service;

import java.util.List;

import com.min.vo.EVO;

public interface ExerciseService {

	List<EVO> selectExerciseList(String category, String part) throws Exception;
	
	EVO selectExerciseOneList(String eid) throws Exception;
	
	
	
	// 운동 추가
	int insertExerciseAdd(EVO evo) throws Exception;
	// 운동 삭제
	int deleteExerciseDel(String eid) throws Exception;
	// 운동 수정  수정삭제는 구현안해도될것같기도하고..
	int updateExerciseUp(EVO evo) throws Exception;
}
