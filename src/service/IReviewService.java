package service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface IReviewService {

	
	public int writeReview(HashMap<String, Object> params);
	
	public int removeReview(String number);
	public int modifyReview(HashMap<String, Object> params);
	public HashMap<String, Object> viewReview(int number);
	public HashMap<String, Object> searchReview(HashMap<String, Object> params, int page);
	public int addLog(HashMap<String, Object> params);
	
	public ArrayList<HashMap<String, Object>> allList();

	public int writeP_Review(String session_id, HashMap<String, Object> params, MultipartFile file);
	public File getReviewImage(int number, HttpServletRequest request);
}
