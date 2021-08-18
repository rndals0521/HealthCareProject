package com.min.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.vo.EVO;

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
	public EVO selectExerciseOneList(String idx) throws Exception {
		return sqlSessionTemplate.selectOne("exOneList",idx);
	}
}
