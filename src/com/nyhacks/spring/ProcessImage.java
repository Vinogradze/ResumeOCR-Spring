package com.nyhacks.spring;

import java.io.File;
import com.asprise.ocr.Ocr;
public class ProcessImage {
	
	public String extractData() {
		Ocr.setUp();
		Ocr myOCR = new Ocr();
		myOCR.startEngine("eng", Ocr.SPEED_FAST);
		String s = myOCR.recognize(new File[] {new File("/Users/JonathanPersaud/Desktop/jonsResume.png")}, Ocr.RECOGNIZE_TYPE_ALL, Ocr.OUTPUT_FORMAT_PLAINTEXT);
		System.out.println("Result: " + s);
		return s;
		
		
	}
}
