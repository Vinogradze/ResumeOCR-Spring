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
	String data = processMe.extractData();
	data = data.replaceAll("\n", " ");
	String[]s = data.split("OBJECTIVE | WORK EXPERIENCE | SKILLS | EDUCATION | PROJECTS & ACCOMPLISHMENT");
	model.addAttribute("candidateInfo",s[0]);
	model.addAttribute("objective",s[1]);
	model.addAttribute("workExperience",s[2]);
	model.addAttribute("skills",s[3]);
	model.addAttribute("education",s[4]);
	model.addAttribute("achomplishments",s[5]);
	return "resume-data";
}

}
