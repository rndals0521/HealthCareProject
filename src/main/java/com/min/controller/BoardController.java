package com.min.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
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
			
			// ��ü �Խù��� �� 
			int count = boardService.selectCount();
			paging.setTotalRecord(count);
			
			// ��ü �������� ��
			if(paging.getTotalPage() <= paging.getNumPerPage()) {
				paging.setTotalPage(1);
			}else {
				// ��ü �������� �� �Ի��ϱ�
				paging.setTotalPage(paging.getTotalRecord()/paging.getNumPerPage());
				// ���� ���� : �������� �����ϸ� ��ü ������ ���� +1 �� �Ѵ�.
				if(paging.getTotalRecord() % paging.getNumPerPage() != 0) {
					paging.setTotalPage(paging.getTotalPage()+1);
				}
			}
			
			// ���� ������ ���ϱ�
			paging.setNowPage(Integer.parseInt(cPage));
			
			// ���۹�ȣ, ����ȣ
			paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerPage() + 1);
			paging.setEnd((paging.getBegin() - 1) + paging.getNumPerPage());

			// ���ۺ��, �����
			paging.setBeginBlock(
						(int) ((paging.getNowPage() - 1) / paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
			paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);

			// ���ǻ��� : endBlock �� totalPage ���� ū ��� �߻� �� �� �ִ�.
			// �� ��� endBlock�� totalPage�� ����� �Ѵ�.
			if (paging.getEndBlock() > paging.getTotalPage()) {
				paging.setEndBlock(paging.getTotalPage());
			}
			List<BVO> list = boardService.selectBoardList(paging.getBegin(), paging.getEnd());
						
			mv.addObject("list",list);
			mv.addObject("pvo", paging);
			// ��.. ���������̶� �ｺ�� �ҷ����°� �����ε�.. ���ߴ�...
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
	
	@RequestMapping("write.do")
	public ModelAndView writeCommand() {
		ModelAndView mv = new ModelAndView("7_WRITE");
		return mv;
	}
	
	@RequestMapping(value="write_ok.do", method = RequestMethod.POST)
	public ModelAndView writeOkCommand(BVO bvo, HttpServletRequest request) {
		try {
			String path = request.getSession().getServletContext().getRealPath("/resources/upload");
			MultipartFile file = bvo.getF_name();
			
			if(file.isEmpty()) {
				bvo.setFile_name("");
			}else {
				bvo.setFile_name(file.getOriginalFilename());
			}
			
			int result = boardService.insertBVO(bvo);
			if(result>0) {
				if(! bvo.getFile_name().isEmpty()) {
					byte[] in = file.getBytes();
					File out = new File(path, bvo.getFile_name());
					FileCopyUtils.copy(in, out);
				}
				return new ModelAndView("redirect:board.do");
			}else {
				return new ModelAndView("redirect:write.do");
			}
			
		} catch (Exception e) {
		}
		return null;
	}
}
