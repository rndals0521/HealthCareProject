package com.min.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.min.vo.BVO;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public int selectCount() throws Exception {
		return sqlSessionTemplate.selectOne("boardCount");
	}
	
	@Override
	public List<BVO> selectBoardList(int begin, int end) throws Exception {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("begin",begin);
		map.put("end",end);
		return sqlSessionTemplate.selectList("boardList",map);
	}
	
	@Override
	public int insertBVO(BVO bvo) throws Exception {
		return sqlSessionTemplate.insert("boardInsert",bvo);
	}
	
	@Override
	public int updateHit(String b_idx) throws Exception {
		return sqlSessionTemplate.update("boardUpdate",b_idx);
	}
}
