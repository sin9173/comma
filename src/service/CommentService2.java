package service;

import java.util.List;

import org.springframework.stereotype.Service;

import dao.CommentMapper;
import model.CommentVO;

@Service
public class CommentService2 {

	
	
    private CommentMapper mCommentMapper;
    
    public List<CommentVO> commentListService() throws Exception{
        
        return mCommentMapper.commentList();
    }
    
    public int commentInsertService(CommentVO comment) throws Exception{
        
        return mCommentMapper.commentInsert(comment);
    }
    
    public int commentUpdateService(CommentVO comment) throws Exception{
        
        return mCommentMapper.commentUpdate(comment);
    }
    
    public int commentDeleteService(int cno) throws Exception{
        
        return mCommentMapper.commentDelete(cno);
    }



}
