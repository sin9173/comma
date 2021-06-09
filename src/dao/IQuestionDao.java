package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import model.Question;

public interface IQuestionDao {
	public int insertQuestion(HashMap<String, Object> params);
	public int deleteQueseion(String num);
	public int updateQuestion(HashMap<String, Object> params);
	public HashMap<String, Object> selectOne(int num);
	
	public ArrayList<HashMap<String, Object>> selectAll();
	public ArrayList<HashMap<String, Object>> searchList();
	
	public int getCount(HashMap<String, Object> params);
	
	public List<Question> selectQuestionPage(HashMap<String, Object> params);

}
