package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.IRequestClassService;
import util.Commons;

@Controller
public class RequestClassController {

	@Autowired
	private IRequestClassService rService;

	// 클래스 요청 등록
	@RequestMapping("classReqResist.do")
	public ModelAndView classReqResist(@RequestParam HashMap<String, Object> params, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		params.put("id", session.getAttribute("id"));
		
		int res = rService.resistRequest(params);

		if (res == Commons.SUCCESS_RESIST) {

		} else if (res == Commons.FAIL_RESIST) {

		} else if (res == Commons.ID_OVERLAP) {

		}
		mav.setViewName("redirect:classReqList.do");
		return mav;
	}
	
	
	

	// 클래스요청 리스트
	@RequestMapping("classReqList.do")
	public ModelAndView classReqList(
			@RequestParam(required=false) String keyword,
			@RequestParam(required=false) String category
			) {
		ModelAndView mav = new ModelAndView();
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		System.out.println(keyword);
		System.out.println(category);
		
		HashMap<String, Object> res = null;
		
		if(keyword==null && category==null) {
			System.out.println("둘다없어~");
			params.put("type", 0);
			res = rService.searchRequest(params, 1);
			
		}else if(keyword!=null && category==null) {
			System.out.println("키워드!");
			params.put("keyword", keyword);
			params.put("type", 1);
			res = rService.searchRequest(params, 1);
			
		}else if(keyword==null && category!=null) {
			System.out.println("카테고리!");
			params.put("type", 2);
			params.put("category", category);
			res = rService.searchRequest(params, 1);
			
		}else {
			params.put("keyword", keyword);
			params.put("category", category);
			params.put("type", 3);
			res = rService.searchRequest(params, 1);
			
		}
		
		
		mav.addAllObjects(res);
		mav.addAllObjects(params);
		
		System.out.println(res);
		System.out.println(params);
		mav.setViewName("classReqList");

		System.out.println("리퀘스트!!");
		return mav;
	}
	
	//클래스요청 목록 추가
	@ResponseBody
	@RequestMapping(value="addClassReqList.do", method = RequestMethod.POST)
	public HashMap<String, Object> addClassReqList(
			@RequestParam HashMap<String, Object> props 
			) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		
		String keyword = (String)props.get("keyword");
		String category = (String)props.get("category");
		String tempPage = (String)props.get("page");
		
		int page = Integer.parseInt(tempPage);
		System.out.println(keyword);
		System.out.println(category);
		
		HashMap<String, Object> res = null;
		
		if(keyword.equals("") & category.equals("")) {
			System.out.println("둘다없어~");
			params.put("type", 0);
			res = rService.searchRequest(params, page);
			
		}else if(!keyword.equals("") && category.equals("")) {
			System.out.println("키워드!");
			params.put("keyword", keyword);
			params.put("type", 1);
			res = rService.searchRequest(params, 1);
			
		}else if(keyword.equals("") && !category.equals("")) {
			System.out.println("카테고리!");
			params.put("type", 2);
			params.put("category", category);
			res = rService.searchRequest(params, 1);
			
		}else {
			params.put("keyword", keyword);
			params.put("category", category);
			params.put("type", 3);
			res = rService.searchRequest(params, 1);
			
		}
		
		
		
		
		System.out.println(res);
		System.out.println(params);
		

		System.out.println("리퀘스트추가!!");
		
		
		return res;
	}

	// 클래스요청상세내용
	@RequestMapping("classReq.do")
	public ModelAndView classReq(@RequestParam String number) {

		System.out.println(number + "번!!");
		
		int num = Integer.parseInt(number);
		
		
		HashMap<String, Object> res = rService.viewRequest(num);
		
		ModelAndView mav = new ModelAndView();

		System.out.println(res);
		mav.addObject("req", res);
		mav.setViewName("classReq");
		return mav;
	}

	// 선생님제안
	@RequestMapping("Suggest.do")
	public ModelAndView cl_req_t(@RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();

		return mav;
	}

	// 클래스 요청 등록 형식
	@RequestMapping("classReqResistForm.do")
	public ModelAndView cr_ResistForm(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("classReqResistForm");

		return mav;
	}

	// 클래스요청삭제

	@ResponseBody
	@RequestMapping("deleteReq.do")
	public Map deleteReq(@RequestParam HashMap<String, Object> params) {

		Map<String, Object> map = new HashMap<String, Object>();
		
		String num = (String)params.get("number");
		
		int number = Integer.parseInt(num);
		
		rService.removeRequest(number);
		


		return map;

	}

	// 클래스요청 검색
	@RequestMapping("searchReq.do")
	public ModelAndView searchReq(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();

		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="offerRequest.do")
	public HashMap<String, Object> offerRequest(@RequestParam HashMap<String, Object> params){
		
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		int tp = Integer.parseInt((String)params.get("type"));
		
		String id = (String)params.get("id");
		HashMap<String, Object> reqmem = rService.viewRequest(Integer.parseInt((String)params.get("number")));
		
		String reqid = (String)reqmem.get("id");
		if(!reqid.equals(id)) {
			
			params.put("teacher", id);
		}else {
			res.put("msg", "같은 아이디입니다.");
			return res;
		}
		
		if(tp==0) {
			System.out.println(params);
			rService.rejectRequest(params);
		}else if(tp==1) {
			rService.offerRequest(params);
			res.put("result", 1);
			res.put("msg", "전달되었습니다.");
			
		}else if(tp==2) {
			rService.compRequest(params);
		}
		
		
		
		return res;
	}
	
	
		// 선생님 수락
		@ResponseBody
		@RequestMapping("acceptT.do")
		public Map acceptT(@RequestParam HashMap<String, Object> params) {
			Map<String, Object> map = new HashMap<String, Object>();

			
			System.out.println(params);
			rService.compRequest(params);
			return map;

		}
}
