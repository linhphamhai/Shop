package com.shop.utils;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

public class Utils {
	
	@Autowired
	ServletContext servletContext;
	
	private String saveUploadedFiles(MultipartFile file) throws IOException {
		String path = servletContext.getRealPath("/resources/images/Products/");
		String oldName = file.getOriginalFilename();
		int i = oldName.length() - 1;
		while(oldName.charAt(i) != '.') {
			i--;
		}
		String time = new Date().getTime() + "";
        String newName = time + oldName.substring(i, oldName.length());
		File newFile = new File(path + newName);
		System.out.println(path + newName);
		try {
			file.transferTo(newFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return newName;
	}
}
