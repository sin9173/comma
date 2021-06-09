package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IQuestionDao;
import model.Question;

@Service
public interface IQuestionService {
	
	
	public int write(HashMap<String, Object> params);
	public int delete(String num);
	public int modify(HashMap<String, Object> params);
	public ArrayList<HashMap<String, Object>> read();
	
	public HashMap<String, Object> getQuestionListPage
	(HashMap<String, Object> params, int page);
	
	public int getStartPage(int num);
	public int getEndPage(int num);
	public int getLastPage(HashMap<String, Object> params);
	public int getSkip(int num);
	public HashMap<String, Object> getQuestion(int num);

}
