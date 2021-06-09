package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import service.ICommentService;

@Controller
public class CommentController {

	
	@Autowired
	private ICommentService coService;
	
	
	@RequestMapping("commentList.do")//댓글 리스트
	public void commentList(HttpServletResponse response,@RequestParam HashMap<String, Object> params) throws IOException {
		
		
		ArrayList<HashMap<String, Object>> result = coService.readComment(params);
		
		
		JSONArray jarr = new JSONArray();
		for (int i = 0; i < result.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("id", result.get(i).get("id"));
			jo.put("content", result.get(i).get("content"));
			jo.put("date", result.get(i).get("date"));
			jo.put("number", result.get(i).get("number"));
			jarr.put(jo);
			
		}
		
		
		response.getWriter().println(jarr);
	}
	
	@RequestMapping("commentWrite.do")//댓글 달기
	public void commentWrite(HttpServletResponse response,HttpSession session,@RequestParam HashMap<String, Object> params) throws IOException{
		
		
		String session_id = (String) session.getAttribute("id");
		
		
		params.put("id", session_id);
	
		int result1 = coService.writeComment(params);
		
		
			
			String result = "1";
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		
		
		
	}
	
	
	@RequestMapping("commentDelete.do")//댓글 삭제
	public void commentDelete(HttpServletResponse response,HttpSession session,@RequestParam String number) throws IOException {
		System.out.println("넘버"+number);
		String session_id = (String) session.getAttribute("id");
		System.out.println("세션아이디"+session_id);
		
		int inumber = Integer.parseInt(number);
		
		HashMap<String, Object> selectNumber = coService.selectOne(inumber);
		
		System.out.println(selectNumber.get("id"));
		if(session_id.equals(selectNumber.get("id"))) {
			coService.delComment(inumber);
			String result = "1";
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		else {
			String result = "2";
			String resultStr = "{ \"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}
		
		
		
		
	}
	
	@RequestMapping("commentModify.do")//댓글 수정
	public String commentModify(@RequestParam HashMap<String, Object> params) {
		int result= coService.modComment(params);
		System.out.println(result);
		return "";
	}
	
	
	
}
