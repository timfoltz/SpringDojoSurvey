package com.tim.dojosurvey.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {

	@RequestMapping("/")
		public String index(HttpSession session) {
			return "index.jsp";
			
		}
	@RequestMapping(path="/submitSurvey", method=RequestMethod.POST)
	public String submitSurvey(@RequestParam String name, 
								@RequestParam String location,
								@RequestParam String language,
								@RequestParam String comment,
								HttpSession session) {
		
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
		if(session.getAttribute("language").equals("Java")) {
			return "redirect:/java";
		}else {return "redirect:/result";}
		
		}
	
	@RequestMapping("/result")
	public String result(HttpSession session, Model model) {
		String name = (String) session.getAttribute("name");
		String location = (String) session.getAttribute("location");
		String language = (String) session.getAttribute("language");
		String comment = (String) session.getAttribute("comment");
		return "result.jsp";
	}
	@RequestMapping("/java")
	public String java(HttpSession session, Model model) {
		String name = (String) session.getAttribute("name");
		String location = (String) session.getAttribute("location");
		String language = (String) session.getAttribute("language");
		String comment = (String) session.getAttribute("comment");
		return "java.jsp";
	}
	
	}

