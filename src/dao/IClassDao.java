package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface IClassDao {
	
	public int insertClass(HashMap<String, Object> params);
	public int updateClass(HashMap<String, Object> params);
	public int deleteClass(String number);
	public String addLikeClass(String number);
	
	public HashMap<String, Object> params(String id);
	public HashMap<String, Object> selectOne(int id);
	public ArrayList<HashMap<String, Object>> selectSearch(HashMap<String, Object> parmas);
	
	public ArrayList<HashMap<String, Object>> listClass(HashMap<String, Object> params);
	public ArrayList<HashMap<String, Object>> popClass();
	public ArrayList<HashMap<String, Object>> allClass();
//	public List<HashMap<String, Object>> popClass();
	
	public int fileUpload(HashMap<String, Object> params);
	public HashMap<String, Object> latestInfo();
}
