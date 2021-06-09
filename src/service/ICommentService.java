package service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ICommentService {

	
	//댓글 쓰기
	public int writeComment(HashMap<String, Object> params);
	
	//댓글 삭제
	public int delComment(int number);
	
	//댓글 수정
	public int modComment(HashMap<String, Object> params);
	
	//댓글 리스트 보여주기
	public ArrayList<HashMap<String, Object>> readComment(HashMap<String, Object> params);
	
	public HashMap<String, Object> selectOne(int number);
	
	
}
