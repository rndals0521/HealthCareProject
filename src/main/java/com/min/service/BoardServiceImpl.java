package com.min.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.min.dao.BoardDAO;
import com.min.vo.BVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO boardDAO;
	
	@Override
	public int selectCount() throws Exception {
		return boardDAO.selectCount();
	}
	
	@Override
	public List<BVO> selectBoardList(int begin, int end) throws Exception {
		return boardDAO.selectBoardList(begin, end);
	}
	
	@Override
	public int insertBVO(BVO bvo) throws Exception {
		return boardDAO.insertBVO(bvo);
	}
	
	@Override
	public int updateHit(String b_idx) throws Exception {
		return boardDAO.updateHit(b_idx);
	}
	
}
