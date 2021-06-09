package dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface ICommentDao {
	
	public int insertComment(HashMap<String, Object> params);
	public int updateComment(HashMap<String, Object> params);
	public int deleteComment(int number);
	
	public HashMap<String, Object> select(int number);
	public ArrayList<HashMap<String, Object>> selectList(HashMap<String, Object> params);
}
