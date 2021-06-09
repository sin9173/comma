package service;

import java.util.HashMap;

public interface IBlackListService {

	
	public int addBlackList(HashMap<String, Object> params);
	
	public int approveBlackList(HashMap<String, Object> params);
	
	public int delBlackList(HashMap<String, Object> params);
	
}
