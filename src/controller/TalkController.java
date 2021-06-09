package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TalkController {

	//톡 보내기
		@RequestMapping("talkWrite.do")
		public ModelAndView talkWrite() {
			
			ModelAndView mav = new ModelAndView();
			
			return mav;
		}

		// 톡
		@RequestMapping("talk.do")
		public ModelAndView talk() {
			ModelAndView mav = new ModelAndView();
			mav.setViewName("talk");
			return mav;
		}

}
