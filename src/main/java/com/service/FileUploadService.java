package com.service;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;



@Service
public class FileUploadService {
	public void uploadProductImage(MultipartFile masterImage) {
		System.out.println(masterImage.getOriginalFilename());
		
		String path =  "C:\\Users\\Ansh\\Documents\\workspace-spring-tool-suite-4-4.22.1.RELEASE\\SpringECommerceProject\\src\\main\\webapp\\images\\product";
		//dao insert
		try {
			byte b[] = masterImage.getBytes();
			File file = new File(path,masterImage.getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, b);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void uploadUserImage(MultipartFile masterImage,String email) {
		System.out.println(masterImage.getOriginalFilename());
		String path = "C:\\Users\\Ansh\\Documents\\workspace-spring-tool-suite-4-4.22.1.RELEASE\\SpringECommerceProject\\src\\main\\webapp\\images\\profilepic";
		File dir = new File(path,email);
		dir.mkdir();
		
		try {
			byte b[]= masterImage.getBytes();
			File file = new File(dir,masterImage.getOriginalFilename());
			FileUtils.writeByteArrayToFile(file, b);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
