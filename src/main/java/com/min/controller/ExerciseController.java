package com.min.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
	public List<RVO> dayContentsCommnad(HttpSession session){
		try {
			String id = (String)session.getAttribute("log_id");
			
			List<RVO> contentList = exerciseService.selectRoutineList(id);
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
			System.out.println(1);
			
			mv.addObject(cList);
			return mv;
			// 지금 안넘어가는 것 같은 cList 이부분이 허허허허허
		} catch (Exception e) {
		}
		return null;
	}
	
	@RequestMapping("routine_detail.do")
	public ModelAndView routineDetailCommand(@ModelAttribute("r_id")String r_id,RVO rvo) {
		try {
			ModelAndView mv = new ModelAndView("4-3_Routine_detail");
			RVO r_vo = exerciseService.selectRoutineOneList(r_id);
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
