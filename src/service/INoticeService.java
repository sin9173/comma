package service;

import java.util.ArrayList;
import java.util.HashMap;

import model.Notice;

public interface INoticeService {

	public int write(HashMap<String, Object> params);
	public int delete(String number);
	public int modify(HashMap<String, Object> params);
	public ArrayList<HashMap<String, Object>> read();
	
	public HashMap<String, Object> getNoticeListPage
	(HashMap<String, Object> params, int page);
	
	public int getStartPage(int num);
	public int getEndPage(int num);
	public int getLastPage(HashMap<String, Object> params);
	public int getSkip(int num);
	public HashMap<String, Object> getNotice(int num);
	
	
	
}
