package com.nyhacks.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FrontController {
	
@RequestMapping("/showUpload")
public String uploadResume() {
	return "upload-form";
}

@RequestMapping("/showResumeData")
public String resumeData() {
	ProcessImage processMe = new ProcessImage();
	processMe.extractData();
	return "resume-data";
}

}
