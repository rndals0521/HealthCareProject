package com.min.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.vo.EVO;
import com.min.vo.RVO;

@Repository
public class ExerciseDAOImpl implements ExerciseDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public List<EVO> selectExerciseList(String category,String part) throws Exception {
		Map<String, String> map = new HashMap<String, String>();
		map.put("category",category);
		map.put("part",part);
		return sqlSessionTemplate.selectList("exList",map);
	}
	
	@Override
	public EVO selectExerciseOneList(String eid) throws Exception {
		return sqlSessionTemplate.selectOne("exOneList",eid);
	}
	
	
	
	// � ����,����,����
	@Override
	public int insertExerciseAdd(EVO evo) throws Exception {
		return 0;
	}
	
	@Override
	public int deleteExerciseDel(String eid) throws Exception {
		return 0;
	}
	
	@Override
	public int updateExerciseUp(EVO evo) throws Exception {
		return 0;
	}
	
	// ��ƾ ����Ʈ ��������
	@Override
	public List<RVO> selectRoutineList(String id) throws Exception {
		return sqlSessionTemplate.selectList("rtList",id);
	}
	
	
	@Override
	public RVO selectRoutineOneList(String r_id) throws Exception {
		return sqlSessionTemplate.selectOne("rtOneList",r_id);
	}
}
