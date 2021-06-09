package controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

//import com.mysql.fabric.Response;

import service.IMemberService;

@Controller
public class MemberController {

	@Autowired
	private IMemberService mService;

	// 선생님등록
	@RequestMapping("t_ResistForm.do")
	public String t_ResistForm() {
		return "t_ResistForm";
	}

//	선생님등록 페이지
	@RequestMapping(value = "t_Resist.do", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public String t_Resist(HttpSession session, @RequestBody HashMap<String, Object> params) {
		System.out.println(params);
		String session_id = (String) session.getAttribute("id");

		System.out.println(params);

		int result = mService.resistTeacher(session_id, params);

//		System.out.println("컨트롤러에 돌아온 리턴값=" + result);

		return "main";

	}

	// 선생님등록 파일 업로드
	@RequestMapping("t_ResistFile.do")
	@ResponseBody
	public Object t_ResistFile(MultipartHttpServletRequest request, HttpSession session) {

		System.out.println("드루와드루와~");

		String id = (String) session.getAttribute("id");

		HashMap<String, Object> params = mService.MemberInfo(id);

		int result = mService.resistProfileImage(id, request);

		return "안녕?";
	}

	@RequestMapping("profileImageView.do")
	public View profileView(String id, HttpServletRequest request) {

		View view = new DownloadView(mService.getProfileImage(id, request));

		return view;
	}

	// 학생 정보 번경 형식
	@RequestMapping("changeInfo_sForm.do")
	public ModelAndView changeInfo_sForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		String id = (String) session.getAttribute("id");

		HashMap<String, Object> info = mService.MemberInfo(id);

		mav.addObject("info", info);

		mav.setViewName("changeInfo_sForm");
		return mav;
	}

	// 학생 정보 변경 페이지
	@RequestMapping("changeInfo_s.do")
	public ModelAndView changeInfo_s(HttpSession session, @RequestParam HashMap<String, Object> params,
			@RequestParam("profile") MultipartFile file) {
		System.out.println(params.get("p_number"));
		System.out.println(params.get("email"));
		ModelAndView mav = new ModelAndView();
		String session_id = (String) session.getAttribute("id");

		HashMap<String, Object> mId = mService.MemberInfo(session_id);
		int mState = (int) mId.get("state");

		if (params.get("password").equals((params).get("passwordCheck")) && session_id != null && mState == 1) {
			int result = mService.modifyMember_s(session_id, params, file);
			System.out.println("컨트롤러에 리턴된값=" + result);
			mav.setViewName("main");
			return mav;
		} else {
			mav.setViewName("changeInfo_sForm");
			return mav;
		}
	}

	// 선생님 정보 변경요청
	@RequestMapping("changeInfo_tForm.do")
	public ModelAndView changeInfo_tForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		String id = (String) session.getAttribute("id");

		HashMap<String, Object> info = mService.MemberInfo(id);

		// 경력
		String[] careers = ((String) info.get("t_career")).split("-");

		ArrayList<HashMap<String, Object>> c = new ArrayList<HashMap<String, Object>>();
		for (String s : careers) {
			HashMap<String, Object> car = new HashMap<String, Object>();

			String[] cars = s.split(":");

			car.put("cat", cars[0]);
			car.put("car", cars[1]);

			c.add(car);
		}

		info.put("careerList", c);
		// 경력END

		// 학력ST
		String[] educs = ((String) info.get("t_education")).split("-");

		ArrayList<HashMap<String, Object>> e = new ArrayList<HashMap<String, Object>>();
		for (String s : educs) {
			HashMap<String, Object> ed = new HashMap<String, Object>();

			String[] cars = s.split(":");

			ed.put("edu", cars[0]);
			ed.put("part", cars[1]);

			e.add(ed);
		}

		info.put("eduList", e);
		// 학력END

		// 자격증ST
		String[] lics = ((String) info.get("t_license")).split("-");

		ArrayList<HashMap<String, Object>> l = new ArrayList<HashMap<String, Object>>();
		for (String s : lics) {
			HashMap<String, Object> lc = new HashMap<String, Object>();

			lc.put("lic", s);

			l.add(lc);
		}

		info.put("licList", l);
		// 자격증END

		System.out.println(info);
		mav.addAllObjects(info);
		// mav.addObject("info", info);

		mav.setViewName("changeInfo_tForm");
		return mav;
	}

	// 선생님 정보 변경 페이지
	@RequestMapping(value = "changeInfo_t.do", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public String changeInfo_t(HttpSession session, @RequestBody HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();
		String session_id = (String) session.getAttribute("id");
		System.out.println("controller" + params);
		System.out.println(session_id);

		HashMap<String, Object> mId = mService.MemberInfo(session_id);
		int mState = (int) mId.get("state");

		System.out.println(params);
		if (session_id != null && mState == 2) {
			int result = mService.modifyMember(session_id, params);
			System.out.println("컨트롤러에 리턴된값=" + result);

			return "redirect:mypage.do";

		} else {

			return "redirect:mypage.do";

		}

	}

	// 마이페이지 학생용, 선생님용, 관리자용(분기)
	@RequestMapping("mypage.do")
	public ModelAndView mypage(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String mode = (String) session.getAttribute("mode");

		System.out.println("모드!" + mode);

		if (mode == null) {
			mav.setViewName("redirect:mainForm.do");
			return mav;
		}

		if (mode == null) {
			mav.setViewName("redirect:mainForm.do");
			return mav;
		}

		if (mode.equals("st")) {
			System.out.println("학생!");

			HashMap<String, Object> params = new HashMap<String, Object>();

			params.put("id", (String) session.getAttribute("id"));

			HashMap<String, Object> info = mService.MemberInfo((String) session.getAttribute("id"));

			HashMap<String, Object> res = mService.myRequest(params);
			
			HashMap<String, Object> payClass = mService.payClass((String) session.getAttribute("id"));
			HashMap<String, Object> refundClass = mService.refClass((String) session.getAttribute("id"));
			HashMap<String, Object> compClass = mService.compClass((String) session.getAttribute("id"));
			HashMap<String, Object> enroll = mService.enroll((String) session.getAttribute("id"));
			
			mav.addAllObjects(enroll);
			mav.addAllObjects(payClass);
			mav.addAllObjects(refundClass);
			mav.addAllObjects(compClass);

			mav.addObject("info", info);

			mav.addAllObjects(res);

			mav.setViewName("mypage_s");

		} else if (mode.equals("tc")) {
			System.out.println("선생님!");

			HashMap<String, Object> params = new HashMap<String, Object>();

			params.put("teacher", (String) session.getAttribute("id"));
			HashMap<String, Object> info = mService.MemberInfo((String) session.getAttribute("id"));
			HashMap<String, Object> res = mService.myTRequest(params);

			HashMap<String, Object> rList = mService.rc_List((String) session.getAttribute("id"));
			HashMap<String, Object> cList = mService.com_List((String)session.getAttribute("id"));
			
			System.out.println(rList);
			mav.addObject("info", info);
			mav.addAllObjects(res);
			mav.addAllObjects(rList);
			mav.addAllObjects(cList);

			mav.setViewName("mypage_t");
		} else if (mode.equals("ad")) {
			System.out.println("관리자!");

			HashMap<String, Object> res = mService.getacceptList(5);

			mav.addAllObjects(res);
			mav.setViewName("admin");
		}

		return mav;
	}

	// 고객센터 폼
	@RequestMapping("centroForm.do")
	public String centorForm() {
		return "centro";
	}

	// 고객센터
	@RequestMapping("centro.do")
	public ModelAndView centro() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("centro");
		return mav;
	}

	@RequestMapping("adminForm.do")
	public String adminForm() {
		return "";
	}

	// 관리자 페이지
	@RequestMapping("admin.do")
	public ModelAndView admin() {
		ModelAndView mav = new ModelAndView();

		return mav;
	}

	// 회원가입
	// 회원가입
	@RequestMapping("join.do")
	public void join(HttpServletResponse response, @RequestParam HashMap<String, Object> params) throws IOException {

		boolean result = mService.resistMember(params);
		System.out.println("컨트롤러=" + result);

		String resultStr = "{ \"result\" : " + result + "}";
		response.getWriter().println(resultStr);

	}

//	@ResponseBody
//	@RequestMapping("naver_login_chk.do")
//	public ModelAndView naver_join(HttpSession session, @RequestParam HashMap<String, Object> params)
//			throws IOException {
//		ModelAndView mav = new ModelAndView();
//
//		System.out.println(params);
//		String gender = (String) params.get("gender");
//		if (gender.equals("F")) {
//			params.put("gender", "2");
//		} else if (gender.equals("M")) {
//			params.put("gender", "1");
//		}
//		System.out.println("gender 값 바뀌었는지 확인!" + params);
//		
//		String email = (String) params.get("email");
//		int state = mService.naver_id_chk(email);
//		if (state == 0) {
//			System.out.println("일치하는 아이디 없음");
//			System.out.println("회원가입 진행");
//
//			int s_state = mService.naver_id_join(params);
//			if (s_state == 1) {
//				// service 에서 네이버 회원가입 잘됨
//				// 강제 로그인
//				force_login(session, s_state, email);
//			} else {
//				// service 에서 네이버 회원가입 문제 생김
//				System.out.println("naver_id_join service 에 문제 있음");
//			}
//		} else {
//			System.out.println("아이디 있음");
//			// 강제 로그인
//			force_login(session, state, email);
//			
//		}
//		mav.setViewName("main");
//		System.out.println("main GO!"+mav);
//		return mav;
//
//	}

	@ResponseBody
	@RequestMapping("naver_login_chk.do")
	public void naver_join(HttpServletResponse response, HttpSession session,
			@RequestParam HashMap<String, Object> params) throws IOException {

		System.out.println(params);
		String gender = (String) params.get("gender");
		if (gender.equals("F")) {
			params.put("gender", "2");
		} else if (gender.equals("M")) {
			params.put("gender", "1");
		}
		System.out.println("gender 값 바뀌었는지 확인!" + params);

		String email = (String) params.get("email");
		int state = mService.naver_id_chk(email);
		if (state == 0) {
			System.out.println("일치하는 아이디 없음");
			System.out.println("회원가입 진행");

			int s_state = mService.naver_id_join(params);
			if (s_state == 1) {
				// service 에서 네이버 회원가입 잘됨
				// 강제 로그인
				force_login(session, s_state, email);
				String result = "1";
				String resultStr = "{\"result\" : " + result + "}";
				response.getWriter().println(resultStr);
			} else {
				// service 에서 네이버 회원가입 문제 생김
				System.out.println("naver_id_join service 에 문제 있음");
			}
		} else {
			System.out.println("아이디 있음");
			// 강제 로그인
			force_login(session, state, email);
			String result = "1";
			String resultStr = "{\"result\" : " + result + "}";
			response.getWriter().println(resultStr);
		}

	}

//네이버 강제 로그인 시키기

	public void force_login(HttpSession session, int state, String id) {
		System.out.println("강제 로그인 시킨다!!!");
		session.setAttribute("id", id);
		session.setAttribute("state", state);

		if (state == 1) {
			session.setAttribute("mode", "st");

		} else if (state == 2) {
			session.setAttribute("mode", "tc");
		} else if (state == 3) {
			session.setAttribute("mode", "ad");
		}

	}

	// 로그인
	@RequestMapping("login.do")
	public ModelAndView login(HttpSession session, String id, String password, HttpServletResponse response) {
//		System.out.println(mService.Login(id, password));
//		System.out.println(id+"ddd"+password);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		int state = mService.Login(id, password);
		System.out.println(state);
		response.setContentType("text/html; charset=utf-8");
		if (state != 0 && state != 4) {
			System.out.println(state);
			session.setAttribute("id", id);
			session.setAttribute("state", state);

			if (state == 1) {
				session.setAttribute("mode", "st");

			} else if (state == 2) {
				session.setAttribute("mode", "tc");
			} else if (state == 3) {
				session.setAttribute("mode", "ad");
			}
//			session.setAttribute("password", password);

		} else {

			try {

				PrintWriter out = response.getWriter();

				out.println("<script language='javascript'>");
				if (state == 0) {
					// 화원 등록이 안된경우
					System.out.println("id X");
					out.println("alert('등록되지 않은 아이디 입니다.');");
					/*
					 * out.println("location.href='mainForm.do';"); out.println("</script>");
					 * out.flush(); out.close();
					 */

				} else if (state == 4) {
					System.out.println("비번 X");
					out.println("alert('비밀번호가 일치하지 않습니다.');");

				}
				out.println("location.href='mainForm.do';");
				out.println("</script>");
				out.flush();
				out.close();

			} catch (IOException e) {
				// TODO Auto-generated catch block

				e.printStackTrace();
			}
		}
		return mav;

	}

	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		System.out.println(session.getAttribute("id"));
		System.out.println(session.getAttribute("state"));
		session.removeAttribute("id");
		session.removeAttribute("state");
		System.out.println("지운 세션 아이디" + session.getAttribute("id"));
		System.out.println("지운 state" + session.getAttribute("state"));
		return "main";
	}

	// 아이디 체크
	@RequestMapping("idCheck.do")
	public void idcheck(String id, HttpServletResponse resp) throws IOException {
//		System.out.println("컨트롤러id=" + id);
		Boolean result = mService.selectOne(id);
		System.out.println(result);
		String resultStr = "{ \"result\" : " + result + "}";
		resp.getWriter().println(resultStr);

	}

	// 로그인네이버
	@RequestMapping("loginNaver.do")
	public ModelAndView loginNaver(@RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();

		return mav;

	}

	// 구글 로그인
	@RequestMapping("loginGoogle.do")
	public ModelAndView loginGoogle(@RequestParam HashMap<String, Object> params) {

		ModelAndView mav = new ModelAndView();

		return mav;

	}

	/*
	 * // 회원탈퇴
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping("dropMember.do") public int dropMember(@RequestParam
	 * HashMap<String, Object> params) { int result=1;
	 * 
	 * 
	 * return result; }
	 */
	
	
	// 회원탈퇴
	@ResponseBody
	@RequestMapping("dropMember.do")
	public int dropMember(HttpSession session,@RequestParam HashMap<String, Object> params) {

		String id = (String) params.get("id");
		System.out.println("멤버 탈퇴할꺼얌" + id);

		int result=mService.naver_id_drop(params);
	
		if(result==1) {
			session.removeAttribute("id");
			session.removeAttribute("state");
			System.out.println("지운 세션 아이디" + session.getAttribute("id"));
			System.out.println("지운 state" + session.getAttribute("state"));
			
		}else {
		//탈퇴 성공시  return 1;
		result = 0;
		}
		return result;
	}

	// 선생님 거부
	@RequestMapping("rejectT.do")
	public ModelAndView rejectT(@RequestParam HashMap<String, Object> params) {
		ModelAndView mav = new ModelAndView();

		return mav;

	}

	// 프로필사진 갖고오는 메소드
	@RequestMapping("profile.do")
	public ModelAndView profile(String id) {
		ModelAndView mav = new ModelAndView();
		File result = mService.getAttachFile(id);
		System.out.println(result);
		mav.addObject(mav);
		return mav;
	}

	// 선생님모드 온오프
	@ResponseBody
	@RequestMapping(value = "modeChange.do", method = RequestMethod.POST)
	public void modeChange(@RequestParam HashMap<String, Object> params, HttpSession session) {

		System.out.println("모드" + params);

		int mode = Integer.parseInt((String) params.get("mode"));

		if (mode == 1) {

			session.setAttribute("mode", "st");
		} else if (mode == 2) {
			session.setAttribute("mode", "tc");
		}

	}

	@ResponseBody
	@RequestMapping(value = "memberInfo.do")
	public HashMap<String, Object> memberInfo(@RequestParam HashMap<String, Object> params) {

		String id = (String) params.get("id");

		HashMap<String, Object> res = mService.MemberInfo(id);

		return res;
	}

	@RequestMapping("myRequestList.do")
	public ModelAndView myRequestList(HttpSession session) {

		ModelAndView mav = new ModelAndView();

		HashMap<String, Object> res = new HashMap<String, Object>();

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("id", (String) session.getAttribute("id"));

		res = mService.myRequest(params);

		System.out.println(res);
		mav.addAllObjects(res);

		mav.setViewName("myReqList");

		return mav;
	}

	@RequestMapping("myTRequestList.do")
	public ModelAndView myTRequestList(@RequestParam String teacher, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		HashMap<String, Object> res = new HashMap<String, Object>();

		HashMap<String, Object> params = new HashMap<String, Object>();

		params.put("teacher", teacher);

		res = mService.myTRequest(params);

		mav.addAllObjects(res);

		mav.setViewName("reqOfferList");

		System.out.println(res);
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "teacherAccept.do")
	public HashMap<String, Object> teacherAccept(@RequestParam HashMap<String, Object> params) {

		HashMap<String, Object> res = new HashMap<String, Object>();

		String id = (String) params.get("id");

		mService.TeacherAccept(id);

		return res;
	}
}
