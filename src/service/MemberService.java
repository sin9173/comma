package service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import dao.IMemberDao;

@Service
public class MemberService implements IMemberService {

	@Autowired
	private IMemberDao dao;

	@Override
	public boolean resistMember(HashMap<String, Object> params) {// 회원가입
		// 패스워드 체크 및 데이터들 DB에 저장

		if (params.get("password").equals(params.get("passwordCheck"))) {

			boolean result = dao.insertMember(params);
			System.out.println("서비스=" + result);
			return true;
		} else {

			return false;
		}

	}

	@Override
	public int removeMember(HashMap<String, Object> params) {
		if (params.get("password").equals(params.get("passwordCheck"))) {
			dao.deleteMember(params);
			return 1;
		} else {
			return 2;
		}
	}

	@Override
	public int modifyMember(String id, HashMap<String, Object> params) {// 회원정보 수정 학생,선생둘다
		System.out.println("service" + params);
		params.put("id", id);
		String t_career = "";
		String t_education = "";
		String t_license = "";
		String sns = (String) params.get("t_sns");
		String education = (String) params.get("t_education");
		String license = (String) params.get("t_license");
		HashMap<String, Object> result = dao.selectMember(id);
		if (sns == null || sns.equals("")) {
			sns = (String) result.get("t_sns");
			params.put("t_sns", sns);

		}
		if (education == null || education.equals("")) {
			education = (String) result.get("t_education");
			params.put("t_education", education);

		}
		if (license == null || license.equals("")) {
			license = (String) result.get("t_license");
			params.put("t_license", license);

		}
		System.out.println(params);

		try {

			ArrayList<String> career = (ArrayList<String>) params.get("t_careerObject");
			for (String s : career) {
				if (!t_career.equals("")) {
					t_career += "-";
				}
				t_career += s;
				System.out.println(s);
			}
		} catch (ClassCastException e) {
			t_career = (String) params.get("t_careerObject");
		}

		try {
			ArrayList<String> edu = (ArrayList<String>) params.get("t_educationObject");

			for (String s : edu) {

				if (!t_education.equals("")) {
					t_education += "-";
				}
				t_education += s;
			}

		} catch (ClassCastException e) {
			t_education = (String) params.get("t_educationObject");
			// TODO: handle exception
		}

		try {
			ArrayList<String> lic = (ArrayList<String>) params.get("t_licenseObject");

			for (String s : lic) {

				if (!t_license.equals("")) {
					t_license += "-";
				}

				t_license += s;
			}

		} catch (ClassCastException e) {
			t_license = (String) params.get("t_licenseObject");
			// TODO: handle exception
		}
		params.put("id", id);
		/*
		 * if(t_sns==null||t_sns.equals("")) { HashMap<String, Object> result =
		 * dao.selectMember(id); t_sns=(String) result.get("t_sns"); params.put("t_sns",
		 * t_sns);
		 * 
		 * }
		 */
		if (!t_career.equals(""))
			params.put("t_career", t_career);
		if (!t_education.equals(""))
			params.put("t_education", t_education);
		if (!t_license.equals(""))
			params.put("t_license", t_license);
		if (id != null) {
			System.out.println(params);
			dao.updateMember(params);
			return 0;
		} else {
			return 1;
		}

	}

	@Override
	public HashMap<String, Object> MemberInfo(String id) {// 프로필

		HashMap<String, Object> result = dao.selectMember(id);
//		System.out.println(result.toString());

		return result;
	}

	@Override
	public ArrayList<HashMap<String, Object>> MemberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int resistTeacher(String id, HashMap<String, Object> params) {// 선생님 등록

		System.out.println("서비스=" + params);
		System.out.println("서비스id=" + id);

		String t_career = "";
		String t_education = "";
		String t_license = "";

		try {

			ArrayList<String> career = (ArrayList<String>) params.get("t_careerObject");
			for (String s : career) {
				if (!t_career.equals("")) {
					t_career += "-";
				}
				t_career += s;
				System.out.println(s);
			}
		} catch (ClassCastException e) {
			t_career = (String) params.get("t_careerObject");
		}

		try {
			ArrayList<String> edu = (ArrayList<String>) params.get("t_educationObject");

			for (String s : edu) {

				if (!t_education.equals("")) {
					t_education += "-";
				}
				t_education += s;
			}

		} catch (ClassCastException e) {
			t_education = (String) params.get("t_educationObject");
			// TODO: handle exception
		}

		try {
			ArrayList<String> lic = (ArrayList<String>) params.get("t_licenseObject");

			for (String s : lic) {

				if (!t_license.equals("")) {
					t_license += "-";
				}

				t_license += s;
			}

		} catch (ClassCastException e) {
			t_license = (String) params.get("t_licenseObject");
			// TODO: handle exception
		}
		params.put("id", id);
		if (!t_career.equals(""))
			params.put("t_career", t_career);
		if (!t_education.equals(""))
			params.put("t_education", t_education);
		if (!t_license.equals(""))
			params.put("t_license", t_license);

		if (id != null) {
			dao.teacherResist(params);
			return 0;
		} else {
			return 1;
		}
	}

	public int resistProfileImage(String id, MultipartHttpServletRequest request) {

		Iterator<String> iter = request.getFileNames();

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("id", id);
		String path = "C:/image/";

		MultipartFile prof = null;
		if (iter.hasNext()) {

			prof = request.getFile(iter.next());

		}

		File dir = new File(path);

		String fileName = prof.getOriginalFilename();

		if (fileName == null || fileName.equals("")) {
			System.out.println("이미지가 없어!!!");
			return 0;
		}
		File attachFile = new File(path + fileName);

		System.out.println(attachFile.getAbsolutePath());

		try {
			prof.transferTo(attachFile);

			params.put("image", fileName);

		} catch (Exception e) {
			// TODO: handle exception
		}

		dao.profileUpdate(params);

		return 1;
	}

	public File getProfileImage(String id, HttpServletRequest request) {

		HashMap<String, Object> mem = dao.selectMember(id);

		String fileName = (String) mem.get("image");

		if (fileName == null) {

			System.out.println("프로필이 없어 ㅠㅠ");
			String img = request.getRealPath("/img/");
			return new File(img + "no_detail_img.gif");
		}

		String path = "C:/image/";

		return new File(path + fileName);
	}

	@Override
	public int Login(String id, String password) {// 로그인
		HashMap<String, Object> result = dao.selectMember(id);

		if (result == null) {
			return 0;// 회원정보 없음
		} else {
			String oPwd = (String) result.get("password");
			if (oPwd == null) {
				return 0;
			} else {
				if (oPwd.equals(password)) {

					int state = (int) result.get("state");
					if (state == 1) {
						return 1;
					} else if (state == 2) {
						return 2;
					} else if (state == 3) {
						return 3;
					}
				} else {
					// 비밀번호가 일치하지 않음
					return 4;
				}
			}
		}

		return 0;
	}

	@Override
	public boolean selectOne(String id) {// 회원가입 아이디 중복 체크
//		System.out.println("서비스id="+id);
		HashMap<String, Object> result = dao.selectMember(id);
//		System.out.println(result);
//		System.out.println(result.get("id"));
		if (result != null) {

			return true;
		} else {
			return false;
		}

	}

	@Override
	public int modeChange(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public File getAttachFile(String id) {

		HashMap<String, Object> result = dao.selectMember(id);
		String fileName = (String) result.get("image");
		String path = "C:/image/";
		return new File(path + fileName);

	}

	@Override
	public int modifyMember_s(String id, HashMap<String, Object> params, MultipartFile file) {
		System.out.println("service" + params.get("p_number"));
		System.out.println("service" + params.get("email"));
		params.put("id", id);
		String pw = (String) params.get("password");

		HashMap<String, Object> result = dao.selectMember(id);
		if (pw.equals("") || pw == null) {
			String password = (String) result.get("password");

			params.put("password", password);
		}

		String path = "C:/image/";
		String fileName = file.getOriginalFilename();
		if (fileName == null || fileName.equals("")) {
			String image = (String) result.get("image");
			params.put("image", image);
		} else {
			params.put("image", fileName);
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

		}
		System.out.println(params);
		dao.updateMember_s(params);

//		System.out.println("modifyMember_s"+params);
//		System.out.println("modifyMember_s"+attachFile.getAbsolutePath());	

		return 0;
	}

	public HashMap<String, Object> myTRequest(HashMap<String, Object> params) {

		HashMap<String, Object> res = new HashMap<String, Object>();
		ArrayList<HashMap<String, Object>> list = dao.getMyTRequest((String) params.get("teacher"));

		res.put("myTRequest", list);

		return res;
	}

	public HashMap<String, Object> myRequest(HashMap<String, Object> params) {

		HashMap<String, Object> res = new HashMap<String, Object>();
		ArrayList<HashMap<String, Object>> list = dao.getMyRequest((String) params.get("id"));

		res.put("myRequest", list);

		return res;
	}

	public HashMap<String, Object> getacceptList(int state) {
		HashMap<String, Object> res = new HashMap<String, Object>();

		ArrayList<HashMap<String, Object>> list = dao.acceptTList(state);

		res.put("acceptList", list);

		return res;
	}

	public int TeacherAccept(String id) {

		dao.TeacherAccept(id);

		return 0;
	}

	@Override
	public int naver_id_chk(String id) {
		HashMap<String, Object> result = dao.selectMember(id);
//		System.out.println(result);
		if (result == null) {
			// 일치하는 아이디 없음 state 값 0 리턴
			return 0;
		} else {
			// 아이디가 있을 경우 state 값을 리턴 (1,2,3중 하나)
			int state = (int) result.get("state");
			System.out.println("naver 아이디 체크 서비스 에서 리턴된 state:" + state);
			return state;
		}

	}

	@Override
	public int naver_id_join(HashMap<String, Object> params) {
		System.out.println("회원가입 service" + params);
		String empty = "";

		params.put("id", params.get("email"));
		params.put("name", params.get("name"));
		params.put("email", params.get("email"));
		params.put("password", empty);
		params.put("gender", params.get("gender"));

		dao.insertMember(params);
		System.out.println(params);
		String id=(String) params.get("id");
		
		//int state = (int) params.get("state");
		int state =naver_id_chk(id);
		
		System.out.println("naver 아이디 가입에서 리턴된 state 값:" + state);
		return state;

	}

	@Override
	public int naver_id_drop(HashMap<String, Object> params) {
		dao.deleteMember(params);
		return 1;
	}
	
	public HashMap<String, Object> rc_List(String id){
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, Object>> list = dao.rclassList(id);
		
		res.put("rList", list);
		
		return res;
	}

	@Override
	public HashMap<String, Object> com_List(String id) {
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, Object>> list = dao.comclassList(id);
		
		res.put("cList", list);
		
		return res;
	}
	
	public HashMap<String, Object> enroll(String id){
		
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, Object>> list = dao.enrollClass(id);
		
		res.put("enroll", list);
		
		
		return res;
	}

	@Override
	public HashMap<String, Object> payClass(String id) {
		// TODO Auto-generated method stub
		
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, Object>> list = dao.payClass(id);
		
		res.put("payClass", list);
		
		return res;
	}

	@Override
	public HashMap<String, Object> refClass(String id) {
		// TODO Auto-generated method stub
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, Object>> list = dao.refundClass(id);
		
		res.put("refClass", list);
		
		return res;
	}

	@Override
	public HashMap<String, Object> compClass(String id) {
		// TODO Auto-generated method stub
		HashMap<String, Object> res = new HashMap<String, Object>();
		
		ArrayList<HashMap<String, Object>> list = dao.compClass(id);
		
		res.put("compClass", list);
		
		return res;
	}
}
