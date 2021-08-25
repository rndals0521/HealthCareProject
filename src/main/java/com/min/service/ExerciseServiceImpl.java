package com.min.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.dao.ExerciseDAO;
import com.min.vo.EVO;
import com.min.vo.RVO;

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
	
	
	
	
	// 운동 삽입,삭제,수정
	@Override
	public int insertExerciseAdd(EVO evo) throws Exception {
		return exerciseDAO.insertExerciseAdd(evo);
	}
	
	@Override
	public int deleteExerciseDel(String eid) throws Exception {
		return exerciseDAO.deleteExerciseDel(eid);
	}
	
	@Override
	public int updateExerciseUp(EVO evo) throws Exception {
		return exerciseDAO.updateExerciseUp(evo);
	}
	
	// 루틴 리스트 가져오기
	@Override
	public List<RVO> selectRoutineList(String id) throws Exception {
		return exerciseDAO.selectRoutineList(id);
	}
	@Override
	public List<RVO> selectRoutineList(String id, String date) throws Exception {
		return exerciseDAO.selectRoutineList(id, date);
	}
	
	
	@Override
	public RVO selectRoutineOneList(String r_id) throws Exception {
		return exerciseDAO.selectRoutineOneList(r_id);
	}
	
	@Override
	public int deleteRoutine(String r_id) throws Exception {
		return exerciseDAO.deleteRoutine(r_id);
	}
	
	@Override
	public int insertRoutine(RVO r_vo) throws Exception {
		return exerciseDAO.insertRoutine(r_vo);
	}
}
