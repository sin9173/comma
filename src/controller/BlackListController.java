package controller;

import java.util.HashMap;

//import javax.xml.ws.soap.Addressing;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.IBlackListService;

@Controller
public class BlackListController {

	
//	@Autowired
//	IBlackListService bService;
	
	//블랙리스트 신고하기
	@RequestMapping("addBlackList.do")
	public ModelAndView addBlackList(@RequestParam HashMap<String, Object> params) {
		
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
	}
	
	
	//블랙리스트 승인하기
	@RequestMapping("approveBlackList.do")
	public ModelAndView approveBlackList(@RequestParam HashMap<String, Object> params) {
		
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
	}

	//블랙리스트 거절하기
	@RequestMapping("rejectBlackList.do")
	public ModelAndView rejectBlackList(@RequestParam HashMap<String, Object> params) {
		
		ModelAndView mav = new ModelAndView();
		
		
		return mav;
	}
}
