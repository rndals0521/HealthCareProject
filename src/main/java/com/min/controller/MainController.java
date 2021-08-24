package com.min.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.min.service.MainService;
import com.min.vo.MVO;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@RequestMapping("main.do")
	public ModelAndView mainCommand() {
		ModelAndView mv = new ModelAndView("1_Main_v2");
		return mv;
	}
	
	@RequestMapping("login.do")
	public ModelAndView loginCommand() {
		ModelAndView mv = new ModelAndView("2-1_Login");
		return mv;
	}
	
		
	@RequestMapping("login_ok.do")
	public ModelAndView loginOkCommand(MVO m_vo, HttpSession session ) {
		try {
			MVO mvo = mainService.selectLogin(m_vo);
			
			if(mvo == null) {
				session.setAttribute("log_in", "0");
				return new ModelAndView("login_err");
			}else {
				session.setAttribute("log_in", "1");
				session.setAttribute("log_id", mvo.getId());
				session.setAttribute("log_name", mvo.getName());
				
				// 관리자
				if(mvo.getId().contentEquals("admin") && mvo.getPw().equals("admin")) {
					session.setAttribute("admin", "ok");
					return new ModelAndView("admin");// 관리자 화면으로 가자.. 만들어야 된다..!;
				}
				return new ModelAndView("redirect:main.do");
			}
			
		} catch (Exception e) {
			session.setAttribute("log_in", "0");
		}
		return null;
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logoutCommand(HttpSession session) {
		session.invalidate();
		return new ModelAndView("redirect:main.do");
	}
	
	@RequestMapping("join.do")
	public ModelAndView joinCommand() {
		ModelAndView mv = new ModelAndView("2-2_Join");
		return mv;
	}
	
	@RequestMapping(value = "join_ok.do", method = RequestMethod.POST)
	public ModelAndView joinCommand(MVO mvo) {
		try {
			int result = mainService.insertMembers(mvo);
			if(result>0) {
				return new ModelAndView("redirect:login.do");
			}else {
				return new ModelAndView("redirect:join.do");
			}
			
		} catch (Exception e) {
		}
		return null;
	}
}
