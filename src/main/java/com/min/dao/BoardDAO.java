package com.min.dao;

import java.util.List;

import com.min.vo.BVO;

public interface BoardDAO {

	int selectCount() throws Exception;
	
	int updateHit(String b_idx) throws Exception;
	
	List<BVO> selectBoardList(int begin, int end) throws Exception;
	
	int insertBVO(BVO bvo) throws Exception;
}
