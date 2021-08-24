package com.min.service;

import java.util.List;

import com.min.vo.EVO;
import com.min.vo.RVO;

public interface ExerciseService {

	List<EVO> selectExerciseList(String category, String part) throws Exception;
	
	EVO selectExerciseOneList(String eid) throws Exception;
	
	
	
	// � �߰�
	int insertExerciseAdd(EVO evo) throws Exception;
	// � ����
	int deleteExerciseDel(String eid) throws Exception;
	// � ����  ���������� �������ص��ɰͰ��⵵�ϰ�..
	int updateExerciseUp(EVO evo) throws Exception;
	
	
	List<RVO> selectRoutineList(String id) throws Exception;
	
	RVO selectRoutineOneList(String r_id) throws Exception;
}
