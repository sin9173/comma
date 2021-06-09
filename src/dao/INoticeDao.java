package dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import model.Notice;

public interface INoticeDao {

	
	public int insertNotice(HashMap<String, Object> params);
	public int deleteNotice(String number);
	public int modifyNotice(HashMap<String, Object> params);
	public HashMap<String, Object> select(int num);
	
	public ArrayList<HashMap<String, Object>> selectAll();
	public ArrayList<HashMap<String, Object>> searchList();
	
	public int getCount(HashMap<String, Object> params);
	
	public List<Notice> selectNoticePage(HashMap<String, Object> params);
}
	
