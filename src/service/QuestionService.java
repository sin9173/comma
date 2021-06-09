package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IQuestionDao;
import model.Notice;
import model.Question;

@Service
public class QuestionService implements IQuestionService{

	@Autowired
	private IQuestionDao dao;
	
	@Override
	public int write(HashMap<String, Object> params) {
		int result = dao.insertQuestion(params);
		System.out.println(result);
		return 0;
	}

	@Override
	public int delete(String num) {
		int result = dao.deleteQueseion(num);
		System.out.println(result);
		return 0;
	}

	@Override
	public int modify(HashMap<String, Object> params) {
		int result = dao.updateQuestion(params);
		System.out.println(result);
		return 0;
	}

	@Override
	public ArrayList<HashMap<String, Object>> read() {
		ArrayList<HashMap<String, Object>> result = dao.searchList();
		return result;
	}

	

	@Override
	public HashMap<String, Object> getQuestionListPage(HashMap<String, Object> params, int page) {
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(params));
		
		params.put("skip", getSkip(page));
		params.put("qty", 10);
		result.put("questionList", dao.selectQuestionPage(params));
		
		return result;
	}

	@Override
	public int getStartPage(int num) {
		
		return (num - 1) / 5 * 5 + 1;
	}

	@Override
	public int getEndPage(int num) {
		
		return ((num-1) / 5 + 1) * 5;
	}

	@Override
	public int getLastPage(HashMap<String, Object> params) {
		
		return (dao.getCount(params) - 1) / 10 + 1;
	}

	@Override
	public int getSkip(int num) {
		
		return (num - 1) * 10;
	}

	@Override
	public HashMap<String, Object> getQuestion(int num) {
		
		return dao.selectOne(num);
		
	}

}
