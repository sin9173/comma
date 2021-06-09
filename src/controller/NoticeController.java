package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.INoticeService;



@Controller
public class NoticeController {

	@Autowired
	private INoticeService nService;
	
	
//	@RequestMapping("noticeList.do")//공지리스트
//	public void noticeList(HttpServletResponse response) throws IOException {
//		
//		
//		System.out.println("들어옴?????");
//		
//		ArrayList<HashMap<String, Object>> result = nService.read();
//
//		JSONArray jarr = new JSONArray();
//		
//		
//		for (int i = 0; i < result.size(); i++) {
//			JSONObject jo = new JSONObject();
//			jo.put("id", result.get(i).get("id"));
//			jo.put("title", result.get(i).get("title"));
//			jo.put("date", result.get(i).get("date"));
//			jarr.put(jo);
//			
//		}
//
//		response.getWriter().println(jarr);
//		
//		
//		
//	}
	
//	//공지사항 상세정보
//	@RequestMapping("notice.do")
//	public ModelAndView notice() {
//
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("centro");
//		return mav;
//	}
		
	@ResponseBody
	@RequestMapping("notice_write.do")//공지사항쓰기
	public Map notice_write(@RequestParam HashMap<String, Object> params) {
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(params);
		System.out.println("controller");
		
		nService.write(params);
		return map;
	}
	
	@RequestMapping("notice_remove.do")//공지사항제거
	public ModelAndView notice_remove(String number) {
		ModelAndView mav = new ModelAndView();
		
		int result = nService.delete(number);
		System.out.println(result);
		
		return mav;
	}
	
	@RequestMapping("notice_modify.do")
	public ModelAndView notice_modify(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		int result = nService.modify(params);
		System.out.println(result);
		return mav;
	}
	

	@RequestMapping("notice.do")
	public ModelAndView noticeList(
		@RequestParam(defaultValue = "1") int page,
//		@RequestParam(required = false) Date startDate,
//		@RequestParam(required = false) Date endDate,
		HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		
		
		
		
		
		HashMap<String, Object> result = nService.getNoticeListPage(params, page);
		

		
		mav.addAllObjects(result);
//		mav.addAllObjects(params);
		System.out.println(result);
		mav.setViewName("centroNotice");
		return mav;
		
		
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="noticeView.do")
	public HashMap<String, Object> noticeView(@RequestParam String number){
		
		int num = Integer.parseInt(number);
		
		
		HashMap<String, Object> res = nService.getNotice(num);
		
		System.out.println(res);
		return res;
	}
	
}
