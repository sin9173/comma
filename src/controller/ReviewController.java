package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import service.IReviewService;

@Controller
public class ReviewController {

	@Autowired
	private IReviewService reService;

	// 리뷰페이지
	@RequestMapping("reviewList.do")
	public ModelAndView reviewList(@RequestParam(required = false) String keyword) {
		ModelAndView mav = new ModelAndView();
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		HashMap<String, Object> result = null;
		if(keyword==null) {
			params.put("type", 0);
			result = reService.searchReview(params, 1);
		}else {
			params.put("type", 1);
			params.put("keyword", keyword);
			result = reService.searchReview(params, 1);
		}
		
		
		System.out.println(result);
		mav.addAllObjects(result);
		
		mav.setViewName("reviewList");
		return mav;

	}

	// 리뷰 작성

	@RequestMapping("reviewWrite.do")
	public ModelAndView reviewWrite(HttpSession session, @RequestParam HashMap<String, Object> params,
			@RequestParam("reviewImage") MultipartFile file) {
		System.out.println("review controller-reviewWrite");
	
		String session_id = (String) session.getAttribute("id");
		
		ModelAndView mav = new ModelAndView();
		System.out.println(params.get("content"));

		int result = reService.writeP_Review(session_id,params,file);
		if(result==1) {
			System.out.println("내용이 비었습니다");
		}
		else if(result==2) {
			System.out.println("이미지가 비었습니다");
		}
		else{
			System.out.println("리뷰쓰기성공!!!");
		}
		
		mav.setViewName("redirect:reviewList.do");
		
		//System.out.println(result);
		return mav;
	}
	 

	/*
	 * // 리뷰 작성
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping("reviewWrite.do") public Map reviewWrite(@RequestParam
	 * HashMap<String, Object> params) {
	 * 
	 * Map<String, Object> map = new HashMap<String, Object>();
	 * 
	 * // map.put("controller", "reviewWrite.do"); return map; }
	 */

	// 리뷰 삭제
	@RequestMapping("deleteReview.do")
	public ModelAndView deleteReview(String number) {

		ModelAndView mav = new ModelAndView();
		int result = reService.removeReview(number);
		System.out.println(result);

		return mav;
	}

//리뷰삭제
	@ResponseBody
	@RequestMapping("deleteReviewForm.do")
	public Map deleteReviewForm(String number) {
		Map<String, Object> map = new HashMap<String, Object>();
	
//		map.put("controller", "deleteReviewForm");
		return map;
	}

	// 리뷰 수정
	@RequestMapping("modifyReview.do")
	public ModelAndView modifyReview(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		int result = reService.modifyReview(params);
		System.out.println(result);

		return mav;
	}

	// 리뷰보기
	@ResponseBody
	@RequestMapping("ReadReview.do")
	public HashMap<String, Object> ReadReview(@RequestParam String number) {
		System.out.println("ReadReview.do controller");
		
		
		int num = Integer.parseInt(number);

		HashMap<String, Object> result = reService.viewReview(num);
		System.out.println(result);

		return result;
	}
	
	@RequestMapping("reviewImageView.do")
	public View profileView(String number, HttpServletRequest request) {
		
		System.out.println(number);

		int num = Integer.parseInt(number);
		
		View view = new DownloadView(reService.getReviewImage(num, request));

		return view;
	}
	
	
	@ResponseBody
	@RequestMapping(value="addReviewList.do", method = RequestMethod.POST)
	public HashMap<String, Object> addReviewList(@RequestParam HashMap<String, Object> props){
		
		String number = (String)props.get("page");
		
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		int page = Integer.parseInt(number);
		
		String keyword = null;
		try {
			
			keyword = (String)props.get("keyword");
			
			if(keyword!=null && !keyword.equals("")) {
				params.put("type", 1);
				params.put("keyword", keyword);
			}else {
				System.out.println("키워드가없어~");
				params.put("type", 0);
				
			}
		} catch (NullPointerException e) {
			params.put("type", 0);
			// TODO: handle exception
		}
		
		System.out.println(keyword);
		System.out.println(params + ":" +page);
		HashMap<String, Object> res = reService.searchReview(params, page);
		
		System.out.println(res);
		return res; 
	}

}
