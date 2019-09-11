package com.kh.with;

import java.text.DateFormat;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.with.video.model.service.VideoService;
import com.kh.with.video.model.vo.Attachment;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private VideoService videoservice;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	   public ModelAndView home(Locale locale,ModelAndView mv) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		
		  List<Attachment> list= videoservice.videoimagelist();

		   mv = new ModelAndView();
		  mv.setViewName("main/main");
		  mv.addObject("list", list);
		  return mv; 
	  
	}
 
 
}
