package service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ILogDao;
@Service
public class LogService implements ILogService{

	@Autowired
	private ILogDao dao;
	
	@Override
	public int addLog(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteLog(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int clearLog() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public HashMap<String, Object> searchLog(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<HashMap<String, Object>> LogList(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return null;
	}

}
