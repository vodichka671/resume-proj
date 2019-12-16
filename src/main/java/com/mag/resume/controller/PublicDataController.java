package com.mag.resume.controller;




import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.joda.time.format.DateTimeFormat;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.mag.resume.entity.Profile;

import com.mag.resume.repository.storage.ProfileRepository;
import com.mag.resume.repository.storage.SkillCategoryRepository;

@Controller
public class PublicDataController {
	@Autowired
	SkillCategoryRepository repo;
	
	@Autowired
	private ProfileRepository profileRepository;


	@RequestMapping(value="/{uid}", method=RequestMethod.GET)
	public String getProfile(@PathVariable("uid") String uid, Model model){
		Profile profile = profileRepository.findByUid(uid);
		//List<SkillCategory> skillCategories = skillCategoryRepository.findById(profile.getId());
		if(profile == null) {
			return "profile_not_found";
		}
		//Map<String, List<String>>profileSkills;
		//profileSkills.
		
		model.addAttribute("profile", profile);
		model.addAttribute("formatter",DateTimeFormat.forPattern("MMM"));
		return "profile";
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String getErrorPage() {
		return"error";
	}
	
	
	
}
