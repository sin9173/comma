package dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface ILogDao {

	public int insertLog(HashMap<String, Object> params);
	public int updateLog(HashMap<String, Object> params);
	public int deleteLog(String id);
	
	public HashMap<String, Object> select(String id);
	public ArrayList<HashMap<String, Object>> selectList(HashMap<String, Object> params);
}
