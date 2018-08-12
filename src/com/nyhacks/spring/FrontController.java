package com.nyhacks.spring;

import org.apache.tomcat.util.buf.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FrontController {
	
@RequestMapping("/showUpload")
public String uploadResume() {
	return "upload-form";
}

@RequestMapping("/showResumeData")
public String resumeData(Model model) {
	ProcessImage processMe = new ProcessImage();
	String [] data = processMe.extractData();
	
	
	model.addAttribute("candidateInfo",data[0]);
	model.addAttribute("objective",data[1]);
	model.addAttribute("workExperience",data[2]);
	model.addAttribute("skills",data[3]);
	model.addAttribute("education",data[4]);
	model.addAttribute("achomplishments",data[5]);
	return "resume-data";
}

}
