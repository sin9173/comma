package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.IReviewDao;

@Service
public class ReviewService implements IReviewService{

	
	@Autowired
	private IReviewDao dao;
	
	
	

	@Override
	public int writeReview(HashMap<String, Object> params) {//리뷰쓰기
		
		if(params.get("title")==null || params.get("title").equals("")) {
			params.put("title", "제목없음");
			
		}
		
		if(params.get("content")==null || params.get("content").equals("")) {
			params.put("content", "내용없음");
		}
		
		
		int result = dao.insertReview(params);
		System.out.println(result);
		return 0;
	}



	@Override
	public int removeReview(String number) {//리뷰제거
		int result = dao.deleteReview(number);
		System.out.println(result);
		return 0;
	}

	@Override
	public int modifyReview(HashMap<String, Object> params) {//리뷰수정
		int result = dao.updateReview(params);
		System.out.println(result);
		return 0;
	}

	@Override
	public HashMap<String, Object> viewReview(int number) {//리뷰보기
		HashMap<String, Object> result = dao.select(number);
		System.out.println(result);
		return result;
	}
	
	private int getSkip(int page) {
		
		return (page-1)*12;
	}

	@Override
	public HashMap<String, Object> searchReview(HashMap<String, Object> params, int page) {//리뷰검색
		
		params.put("skip", getSkip(page));
		params.put("qty", 12);
		
		ArrayList<HashMap<String, Object>> res = dao.searchList(params);
		
		HashMap<String, Object> result = new HashMap<String, Object>();
		
		result.put("reviewList", res);
		// TODO Auto-generated method stub
		return result;
	}

	@Override
	public int addLog(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public ArrayList<HashMap<String, Object>> allList() {
		ArrayList<HashMap<String, Object>> result= dao.selectList();
		System.out.println(result);
		return result;
	}



	@Override
	public int writeP_Review(String id, HashMap<String, Object> params, MultipartFile file) {
		String path = "C:/image/review/";
		String fileName = file.getOriginalFilename();
		String content = (String) params.get("content");
		params.put("id", id);
		String title = (String) params.get("title");
		
		
		// 모든 값이 들어있고 DBinsert 성공시 return0
		
		if (content == null || content.equals("")) {
			params.put("content", "내용없음");
		}else {
			params.put("content", content);	
		}
		
		if (fileName == null || fileName.equals("")) {
			params.put("image", null);
		}else {
			
			params.put("image", fileName);
		}
		
		if(title == null || title.equals("")) {
			params.put("title", "제목없음");
		}
		
		
		File attachFile = new File(path + fileName);
		
		try {
			file.transferTo(attachFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		int result = dao.insertReview(params);
		return 0;
		
		
	
	}
	
	
	
	
	public File getReviewImage(int number, HttpServletRequest request) {

		HashMap<String, Object> mem = dao.select(number);

		String fileName = (String) mem.get("image");

		if (fileName == null) {

			System.out.println("리뷰이미지가 없어 ㅠㅠ");
			String img = request.getRealPath("/img/");
			return new File(img + "test3.jpg");
		}

		String path = "C:/image/review/";

		return new File(path + fileName);
	}
	

	
	
}
