package com.min.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.min.service.FoodService;

@Controller
public class FoodController {

	@Autowired
	private FoodService foodService;
	
	@RequestMapping("food.do")
	public ModelAndView foodCommand() {
		ModelAndView mv = new ModelAndView("5-1_Food");
		return mv;
	}
	
	@RequestMapping("food_detail.do")
	public ModelAndView foodDetailCommand() {
		ModelAndView mv = new ModelAndView("5-2_Food_detail");
		return mv;
	}
	
	@RequestMapping("food_my.do")
	public ModelAndView foodMyCommand() {
		ModelAndView mv = new ModelAndView("5-3_Food_My");
		return mv;
	}
	
	@RequestMapping("food_cal.do")
	public ModelAndView foodCalCommand() {
		ModelAndView mv = new ModelAndView("5-4_Food_Cal");
		return mv;
	}
	
	@RequestMapping("food_share.do")
	public ModelAndView foodShareCommand() {
		ModelAndView mv = new ModelAndView("5-5_Food_share");
		return mv;
	}
}
