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

@Controller
public class ExerciseController {
	
	@Autowired
	private ExerciseService exerciseService;
	
	// DB 처리가 안나서 아직 오류남 category와 part를 받아서 리스트가져와서 출력하기
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
		ModelAndView mv = new ModelAndView("4-1_Routine");
		return mv;
	}
	
	@RequestMapping("myroutine.do")
	public ModelAndView myRoutineCommand() {
		ModelAndView mv = new ModelAndView("4-2_Routine");
		return mv;
	}
	
	@RequestMapping("routine_detail.do")
	public ModelAndView routineDetailCommand() {
		ModelAndView mv = new ModelAndView("4-3_Routine_detail");
		return mv;
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
