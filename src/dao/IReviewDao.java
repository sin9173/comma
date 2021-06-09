package dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface IReviewDao {
	
	public int insertReview(HashMap<String, Object> params);
	public int updateReview(HashMap<String, Object> params);
	public int deleteReview(String number);
	
	public HashMap<String, Object> select(int number);
	public ArrayList<HashMap<String, Object>> selectList();
	public ArrayList<HashMap<String, Object>> searchList(HashMap<String, Object> params);
}
