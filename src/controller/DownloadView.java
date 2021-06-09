package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.servlet.view.AbstractView;


public class DownloadView extends AbstractView{

	private File file;

	public DownloadView(File file) {
		super();
		setContentType("application/download; UTF-8");
		this.file = file;
	}

	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType(getContentType());//읽을 파일의 타입
		response.setContentLengthLong((int)file.length());//파일의 크기 지정
		
		String userAgent = request.getHeader("User-Agent");
		
		boolean ie = userAgent.indexOf("MSIE") > -1;
		
		String fileName = null;
		
		if(ie) {
			fileName = URLEncoder.encode(file.getName(), "UTF-8");
			
		} else {
			fileName =  new String(file.getName().getBytes("UTF-8"));
		}
		
		response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"; "); 
		response.setHeader("Content-Transfer-Encoding", "binary");
		
		OutputStream out = response.getOutputStream();
		FileInputStream fis = null;
		
		try {
			fis = new FileInputStream(file);
			FileCopyUtils.copy(fis, out);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(fis!=null)fis.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		out.flush();
	}

	
	
}
