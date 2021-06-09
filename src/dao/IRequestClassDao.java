package dao;

import java.util.ArrayList;
import java.util.HashMap;

public interface IRequestClassDao {

	public int insertRequestClass(HashMap<String, Object> params);
	public int updateRequestClass(HashMap<String, Object> params);
	public int deleteRequestClass(int num);
	
	public HashMap<String, Object> select(int num);
	public ArrayList<HashMap<String, Object>> selectList(HashMap<String, Object> params);
	
	public ArrayList<HashMap<String, Object>> searchList(HashMap<String, Object> params);
	
	public int TeacherOfferUpdate(HashMap<String, Object> params);
	
	
	
}
