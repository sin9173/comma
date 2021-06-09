package service;

import java.io.File;
import java.io.IOException;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.IMemberDao;
import model.Member;

@Service
public class ImageUpdate implements IimageUpdate  {

	@Autowired
	private IMemberDao dao;

	@Override
	public String imageUpdate(Member member, MultipartFile file) {//학생프포리사진 수정
		
		String path = "c:/image/";
		
		File dir = new File(path);
		
		String fileName = file.getOriginalFilename();
		
		File attachFile = new File(path + fileName);
		
		try {
			file.transferTo(attachFile);
			member.setImage(fileName);
		} catch (IllegalStateException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (IOException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		//dao.imageUpdate(member);
		
		
		return member.getId();
		
	}

	
	
	
	
	
}
