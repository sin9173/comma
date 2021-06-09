package dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface IBlackListDao {

	public int insertBlackList(HashMap<String, Object> params);
	public int updateBlackList(HashMap<String, Object> params);
	public int deleteBlackList(int number);
	
	public HashMap<String, Object> select(int number);
	public ArrayList<HashMap<String, Object>> selectList(HashMap<String, Object> params);
	
}
