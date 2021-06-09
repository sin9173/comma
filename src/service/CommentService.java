package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ICommentDao;

@Service
public class CommentService implements ICommentService {

	@Autowired
	private ICommentDao dao;
	
	@Override
	public int writeComment(HashMap<String, Object> params) {//댓글 쓰기
		System.out.println("서비스"+params);
		int result = dao.insertComment(params);
		return result;
	}

	@Override
	public int delComment(int number) {//댓글 지우기(학생만)
		int result = dao.deleteComment(number);
		return result;
	}

	@Override
	public int modComment(HashMap<String, Object> params) {//댓글 수정
		int result = dao.updateComment(params);
		return result;
	}

	@Override
	public ArrayList<HashMap<String, Object>> readComment(HashMap<String, Object> params) {//댓글 리스트 보여주기
		ArrayList<HashMap<String, Object>> result = dao.selectList(params);
		return result;
	}

	@Override
	public HashMap<String, Object> selectOne(int number) {
		HashMap<String, Object> result = dao.select(number);
		return result;
	}
	
	

}
