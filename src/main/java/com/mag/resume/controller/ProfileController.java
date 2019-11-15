package com.mag.resume.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mag.resume.repository.storage.SkillCategoryRepository;

@Controller
public class ProfileController {
	@Autowired
	SkillCategoryRepository repo;
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile() {
		
		return "profile";
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String getErrorPage() {
		return"error";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String getEditPage(Model model) {
		model.addAttribute("skillCategories", repo.findAll(new Sort("id")));
		return "/edit";
		
	}
	
}
