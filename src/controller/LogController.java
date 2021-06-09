package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.ILogService;

@Controller
public class LogController {

//	@Autowired
//	private ILogService lService;
	
	//로그추가
	@RequestMapping("addlog.do")
	public ModelAndView addlog() {

		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	//조회했던 클래스
	@RequestMapping("history.do")
	public ModelAndView history() {

		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	//맞춤클래스
	@RequestMapping("orderList.do")
	public ModelAndView orderList() {

		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	
	//관심클래스
	@RequestMapping("interList.do")
	public ModelAndView interList() {
		
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	
}
