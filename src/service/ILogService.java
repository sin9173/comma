package service;

import java.util.ArrayList;
import java.util.HashMap;

public interface ILogService {

	
	public int addLog(HashMap<String, Object> params);
	public int deleteLog(HashMap<String, Object> params);
	
	public int clearLog();
	
	public HashMap<String, Object> searchLog(HashMap<String, Object> params);
	public ArrayList<HashMap<String, Object>> LogList(HashMap<String, Object> params);
	
}
