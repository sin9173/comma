package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PayController {

	
	// 결제 페이지
		@RequestMapping("pay.do")
		public ModelAndView pay() {
			ModelAndView mav = new ModelAndView();

			return mav;
		}

		// 환불 페이지
		@RequestMapping("refund.do")
		public ModelAndView refund() {
			ModelAndView mav = new ModelAndView();

			mav.setViewName("refund");
			return mav;
		}
}
