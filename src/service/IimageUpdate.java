package service;

import java.io.File;

import org.springframework.web.multipart.MultipartFile;

import model.Member;

public interface IimageUpdate {
	
	public String imageUpdate(Member member, MultipartFile file);

	
}
