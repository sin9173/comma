package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.INoticeDao;
import model.Notice;

@Service
public class NoticeService implements INoticeService{

	@Autowired
	private INoticeDao dao;
	
	@Override
	public int write(HashMap<String, Object> params) {//공지쓰기
		int result= dao.insertNotice(params);
		return result;
	}

	@Override
	public int delete(String number) {//공지삭제
		int result = dao.deleteNotice(number);
		System.out.println(result);
		return 0;
	}

	@Override
	public int modify(HashMap<String, Object> params) {//공지수정
		int result = dao.modifyNotice(params);
		System.out.println(result);
		return 0;
	}

	@Override
	public ArrayList<HashMap<String, Object>> read() {//공지리스트
		ArrayList<HashMap<String, Object>> result = dao.selectAll();
		return result;
	}

	@Override
	public HashMap<String, Object> getNoticeListPage(HashMap<String, Object> params, int page) {//페이지이동
		HashMap<String, Object> result = new HashMap<String, Object>();
		result.put("current", page);
		result.put("start", getStartPage(page));
		result.put("end", getEndPage(page));
		result.put("last", getLastPage(params));
		
		params.put("skip", getSkip(page));
		params.put("qty", 10);
		result.put("noticeList", dao.selectNoticePage(params));
		
		return result;
	}

	@Override
	public int getStartPage(int num) {
		
		return (num - 1) / 5 * 5 + 1;
	}

	@Override
	public int getEndPage(int num) {
		
		return ((num-1) / 5 + 1) * 5;
	}

	@Override
	public int getLastPage(HashMap<String, Object> params) {
		
		return (dao.getCount(params) - 1) / 10 + 1;
	}

	@Override
	public int getSkip(int num) {
		
		return (num - 1) * 10;
	}

	@Override
	public HashMap<String, Object> getNotice(int num) {
		
		return dao.select(num);
		
	}

}
