package com.min.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.min.service.ExerciseService;
import com.min.vo.EVO;
import com.min.vo.RVO;

@Controller
public class ExerciseController {
	
	@Autowired
	private ExerciseService exerciseService;
	
	// DB 처리가 안나서 아직 오류남 category와 part를 받아서 리스트가져와서 출력하기
	// ajax로 해야 깔끔 하게 될것 같긴 하다..
	@RequestMapping("exercise.do")
	public ModelAndView exerciseCommand(HttpServletRequest request) {
		try {
			ModelAndView mv = new ModelAndView("3-1_Exercise");
			String category = request.getParameter("category");
			String part = request.getParameter("part");
			if(category == null && part==null) {
				category = "health";
			}
			if(part == null) {
				part = "chest";
			}
			List<EVO> elist = exerciseService.selectExerciseList(category,part);
			mv.addObject("elist",elist);
			return mv;
		} catch (Exception e) {
		}
		return null;
	}
	
	
	/*
	@RequestMapping("exercise.do")
	public ModelAndView exerciseCommand() {
		ModelAndView mv = new ModelAndView("3-1_Exercise");
		return mv;
	}
	*/
	
	@RequestMapping("ExerciseDetail.do")
	public ModelAndView exerciseDetailCommand(@RequestParam("eid")String eid) {
		try {
			ModelAndView mv = new ModelAndView("3-2_Exercise_detail");
			EVO evo = exerciseService.selectExerciseOneList(eid);
			mv.addObject("evo",evo);
			return mv;
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("routine.do")
	public ModelAndView routineCommand() {
		ModelAndView mv = new ModelAndView("4-1_Routine2");
		return mv;
	}
	
	@RequestMapping(value = "dayContents.do", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<RVO> dayContentsCommnad(HttpSession session,String date){
		try {
			String id = (String)session.getAttribute("log_id");
			
			List<RVO> contentList = exerciseService.selectRoutineList(id,date);
			return contentList;
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("myroutine.do")
	public ModelAndView myRoutineCommand(HttpSession session) {
		try {
			ModelAndView mv = new ModelAndView("4-2_Routine");
			String id = (String)session.getAttribute("log_id");
			List<RVO> cList = exerciseService.selectRoutineList(id);
			
			mv.addObject("cList",cList);
			return mv;
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("deleteroutine_ok.do")
	public ModelAndView deleteRoutineCommand(@RequestParam("r_id")String r_id) {
		try {
			int result = exerciseService.deleteRoutine(r_id);
			if(result>0) {
				
				return new ModelAndView("redirect:myroutine.do");
			}
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping(value = "insertroutine_ok.do", method=RequestMethod.POST)
	public ModelAndView insertRoutineCommand(RVO rvo,@ModelAttribute("r_date")String r_date,HttpSession session) {
		try {
			String id = (String)session.getAttribute("log_id");
			
			
			RVO r_vo = new RVO();
			r_vo.setId(id);
			r_vo.setR_con1(rvo.getR_con1());
			r_vo.setR_con2(rvo.getR_con2());
			r_vo.setR_con3(rvo.getR_con3());
			r_vo.setR_con4(rvo.getR_con4());
			r_vo.setR_con5(rvo.getR_con5());
			r_vo.setR_kinds(rvo.getR_kinds().toString());
			r_vo.setR_name(rvo.getR_name());
			r_vo.setR_date(r_date);
			
						
			int result = exerciseService.insertRoutine(r_vo);
			if(result>0) {
				
				return new ModelAndView("redirect:myroutine.do");
			}
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("routine_detail.do")
	public ModelAndView routineDetailCommand(@ModelAttribute("r_id")String r_id,RVO rvo) {
		try {
			ModelAndView mv = new ModelAndView("4-3_Routine_detail");
			System.out.println(r_id);
			RVO r_vo = exerciseService.selectRoutineOneList(r_id);
			mv.addObject("rvo",r_vo);
			return mv;
		} catch (Exception e) {
		}
		return null;

	}
	
	@RequestMapping("routine_share.do")
	public ModelAndView routineShareCommand() {
		ModelAndView mv = new ModelAndView("4-5_Routine_share");
		return mv;
	}
	
	@RequestMapping("routine_write.do")
	public ModelAndView routineWriteCommand() {
		ModelAndView mv = new ModelAndView("4-4_Routine_write");
		return mv;
	}
	
	
	
}
