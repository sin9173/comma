package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.IClassDao;

@Service
public class ClassService implements IClassService{

	
	@Autowired
	private IClassDao dao;
	
	
	@Override
	public int resistClass(HashMap<String, Object> params) {//요청클래스
		int result = dao.insertClass(params);
		
		
		
		System.out.println("서비스"+result);
		return result;
	}

	@Override
	public int removeClass(String number) {//삭제클레스
		int result = dao.deleteClass(number);
		return 0;
	}

	@Override
	public int modifyClass(HashMap<String, Object> params) {//수정클레스
		int result = dao.updateClass(params);
		return result;
	}

	@Override
	public HashMap<String, Object> viewClass(int number) {//클레스 상세내용
		HashMap<String, Object> result = dao.selectOne(number);
	
		return result;
	}

	@Override
	public HashMap<String, Object> searchClass(HashMap<String, Object> params) {//검색클레스
		
		
		
		ArrayList<HashMap<String, Object>> list = dao.selectSearch(params);
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		
		for (HashMap<String, Object> m : list) {
			
			 String resultStr = (String) m.get("c_image");
			 String[] arr = resultStr.split("-");
			
			
			m.put("c_image", arr[0]);
		}
		
		
		res.put("classList", list);
		
		System.out.println("서비스"+res);
		// TODO Auto-generated method stub
		return res;
	}

	@Override
	public ArrayList<HashMap<String, Object>> allList() {//모든클래스
		ArrayList<HashMap<String, Object>> result = dao.allClass();
		return result;
	}
	
	@Override
	public HashMap<String, Object> popList() {//인기클래스
		ArrayList<HashMap<String, Object>> result = dao.popClass();
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		
		for (HashMap<String, Object> m : result) {
			
			 String resultStr = (String) m.get("c_image");
			 String[] arr = resultStr.split("-");
			
			
			m.put("c_image", arr[0]);
		}
		
		
		res.put("mainList", result);
		System.out.println(res);
		
		
		return res;
	}
	

	@Override
	public ArrayList<HashMap<String, Object>> historyClass(int max) {//배네에서 내가본 클래스
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ArrayList<HashMap<String, Object>> orderClass(HashMap<String, Object> params) {//맞춤클래스
		
		return null;
	}

	@Override
	public String interClass(String number) {//학생상태의 관심클래스
		String result = dao.addLikeClass(number);
		return result;
	}

	@Override
	public int addReview(HashMap<String, Object> params) {//리뷰쓰기 
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addLog(HashMap<String, Object> params) {//로그추가
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	@Override
	public int classFileUpload(MultipartHttpServletRequest fiReq, int number) {
		
		
		Iterator<String> iter = fiReq.getFileNames();
		
		System.out.println(iter);
		HashMap<String, Object> params = new HashMap<String, Object>();
		
		String path = "C:/image/classfile/";
		
		String fileNames = "";
		
		MultipartFile classfile = null;
		
		while(iter.hasNext()) {
			System.out.println("파일");
			classfile = fiReq.getFile(iter.next());
			
			String fileName = classfile.getOriginalFilename();
			
			System.out.println(fileName);
			
			
			
			File attachFile = new File(path+fileName);
			
			System.out.println(attachFile.getAbsolutePath());
			
			try {
				classfile.transferTo(attachFile);
				
				if(fileName!=null ) {
					
					fileNames = fileNames + fileName + "-";
				}
			} catch (IOException e) {
				// TODO: handle exception
			}
			
			
			
			
		}
		
		System.out.println("fileNames : "+fileNames);
		params.put("number", number);
		params.put("files", fileNames);
		
		dao.fileUpload(params);
		
		return 0;
	}
	@Override
	public File getClassImage(String c_image,HttpServletRequest request) {

		
		

		String fileName = c_image;
		System.out.println(fileName);

		if (fileName == null) {

			System.out.println("클래스 사진이 없음");
			String img = request.getRealPath("/img/");
			return new File(img + "test2.jpg");
		}

		String path = "C:/image/classfile/";

		return new File(path + fileName);
	}
	
	
	public HashMap<String, Object> latestInfo(){
		
		HashMap<String, Object> res = dao.latestInfo();
		
		
		return res;
	}
	

}
