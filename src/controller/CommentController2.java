package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param;

import model.CommentVO;
import service.CommentService2;


@Controller
public class CommentController2 {
	 
	@Autowired
    private CommentService2 mCommentService;
    
    
//    @RequestMapping("list.do") //댓글 리스트
//    private List<CommentVO> mCommentServiceList(String bno) throws Exception{
//        System.out.println(bno);
//        return mCommentService.commentListService();
//    }
//    
//    @RequestMapping("insert.do") //댓글 작성 
//    private void mCommentServiceInsert(HttpServletResponse response,HttpSession session ,@RequestParam HashMap<String, Object> params) throws Exception{
//       
//    	System.out.println("작성="+params);
//    	
//    	
//    	String session_id = (String) session.getAttribute("id");
//    	System.out.println(session_id);
//        CommentVO comment = new CommentVO();
//       
////        comment.setContent(content);
//        //로그인 기능을 구현했거나 따로 댓글 작성자를 입력받는 폼이 있다면 입력 받아온 값으로 사용하면 됩니다. 저는 따로 폼을 구현하지 않았기때문에 임시로 "test"라는 값을 입력해놨습니다.
//        comment.setWriter(session_id);  
//        System.out.println(mCommentService.commentInsertService(comment));
//        
//        String result = "1";
//        String resultStr = "{ \"result\" : " + result + "}";
//		response.getWriter().println(resultStr);
//    }
//    
//    @RequestMapping("update.do") //댓글 수정  
//    @ResponseBody
//    private int mCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception{
//        
//        CommentVO comment = new CommentVO();
//        comment.setCno(cno);
//        comment.setContent(content);
//        
//        return mCommentService.commentUpdateService(comment);
//    }
//    
//    @RequestMapping("delete.do") //댓글 삭제  
//    @ResponseBody
//    private int mCommentServiceDelete(@PathVariable int cno) throws Exception{
//        
//        return mCommentService.commentDeleteService(cno);
//    }
    
}



