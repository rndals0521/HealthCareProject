package com.min.service;

import java.util.List;

import com.min.vo.EVO;

public interface ExerciseService {

	List<EVO> selectExerciseList(String category, String part) throws Exception;
	
	EVO selectExerciseOneList(String eid) throws Exception;
	
	
	
	// � �߰�
	int insertExerciseAdd(EVO evo) throws Exception;
	// � ����
	int deleteExerciseDel(String eid) throws Exception;
	// � ����  ���������� �������ص��ɰͰ��⵵�ϰ�..
	int updateExerciseUp(EVO evo) throws Exception;
}
