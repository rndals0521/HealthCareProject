package com.min.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.min.service.BoardService;
import com.min.service.Paging;
import com.min.vo.BVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private Paging paging;
	
	@RequestMapping("board.do")
	public ModelAndView boardCommand(@ModelAttribute("cPage")String cPage) {
		try {
			ModelAndView mv = new ModelAndView("7_ETC");
			
			// 전체 게시물의 수 
			int count = boardService.selectCount();
			paging.setTotalRecord(count);
			
			// 전체 페이지의 수
			if(paging.getTotalPage() <= paging.getNumPerPage()) {
				paging.setTotalPage(1);
			}else {
				// 전체 페이지의 수 게산하기
				paging.setTotalPage(paging.getTotalRecord()/paging.getNumPerPage());
				// 주의 사항 : 나머지가 존재하면 전체 페이지 수에 +1 을 한다.
				if(paging.getTotalRecord() % paging.getNumPerPage() != 0) {
					paging.setTotalPage(paging.getTotalPage()+1);
				}
			}
			
			// 현재 페이지 구하기
			paging.setNowPage(Integer.parseInt(cPage));
			
			// 시작번호, 끝번호
			paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
			paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());

			// 시작블록, 끝블록
			paging.setBeginBlock(
						(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

			// 주의사항 : endBlock 이 totalPage 보다 큰 경우 발생 할 수 있다.
			// 이 경우 endBlock를 totalPage에 맞춰야 한다.
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			List<BVO> list = boardService.selectBoardList(paging.getBegin(), paging.getEnd());
						
			mv.addObject("list",list);
			mv.addObject("pvo", paging);
			// 아.. 공지사항이랑 헬스랑 불러오는거 따로인데.. 망했누...
			return mv;
		} catch (Exception e) {
			System.out.println(e);
		}
		return null;
	}

	@RequestMapping("notice.do")
	public ModelAndView noticeCommand() {
		ModelAndView mv = new ModelAndView("7-2_Notice");
		return mv;
	}
	
	@RequestMapping("freeboard.do")
	public ModelAndView freeboardCommand() {
		ModelAndView mv = new ModelAndView("7-3_FreeBoard");
		return mv;
	}
	
	@RequestMapping("freeboard2.do")
	public ModelAndView freeboard2Command() {
		ModelAndView mv = new ModelAndView("7-3_FreeBoard2");
		return mv;
	}
	
	@RequestMapping("QnA.do")
	public ModelAndView QnACommand() {
		ModelAndView mv = new ModelAndView("7-4_QnA");
		return mv;
	}
	
	@RequestMapping("post.do")
	public ModelAndView postCommand() {
		ModelAndView mv = new ModelAndView("7_POST");
		return mv;
	}
	
	
}
