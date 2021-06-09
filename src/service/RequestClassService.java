package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.IRequestClassDao;

@Service
public class RequestClassService implements IRequestClassService{

	
	@Autowired
	private IRequestClassDao dao;
	
	@Override
	public int resistRequest(HashMap<String, Object> params) {//클래스 요청
		
		System.out.println(params);
		// TODO Auto-generated method stub
		String stday = (String)params.get("year")+ ":" + params.get("month")+ ":" +params.get("day");
		String time = (String)params.get("time") + ":" + params.get("hour");
		String loc = (String)params.get("province") +":"+ params.get("city") + ":" + params.get("gu");
		params.put("c_startday", stday);
		params.put("c_starttime", time);
		params.put("c_location", loc);
		
		
		dao.insertRequestClass(params);
		return 0;
	}

	@Override
	public int removeRequest(int number) {
		
		dao.deleteRequestClass(number);
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyRequest(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public HashMap<String, Object> viewRequest(int number) {
		
		HashMap<String, Object> res = dao.select(number);
		// TODO Auto-generated method stub
		return res;
	}
	
	
	
	private int getSkip(int page) {
		
		return (page-1)*8;
	}

	@Override
	public HashMap<String, Object> searchRequest(HashMap<String, Object> params, int page) {
		
		params.put("skip", getSkip(page));
		params.put("qty", 8);
		ArrayList<HashMap<String, Object>> list = dao.searchList(params);
		
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		
		res.put("classReqList", list);
		
		System.out.println(res);
		// TODO Auto-generated method stub
		return res;
	}

	@Override
	public int addLog(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int offerRequest(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		
		params.put("offer", 2);
		dao.TeacherOfferUpdate(params);
		
		return 0;
	}

	@Override
	public int compRequest(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		
		params.put("offer", 3);
		dao.TeacherOfferUpdate(params);
		
		return 0;
	}

	@Override
	public int rejectRequest(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		
		params.put("offer", 1);
		params.put("teacher", null);
		
		dao.TeacherOfferUpdate(params);
		
		
		return 0;
	}
	
	

}
