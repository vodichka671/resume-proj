package com.mag.resume.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mag.resume.entity.Contacts;
import com.mag.resume.entity.Skill;
import com.mag.resume.form.CertificateForm;
import com.mag.resume.form.GeneralForm;
import com.mag.resume.form.PracticForm;
import com.mag.resume.form.SkillForm;
import com.mag.resume.repository.storage.ProfileRepository;
import com.mag.resume.repository.storage.SkillCategoryRepository;
import com.mag.resume.repository.storage.SkillRepository;
import com.sun.org.apache.bcel.internal.generic.NEW;


@Controller
public class EditController {
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private ProfileRepository profileRepository;
	
	@Autowired
	private SkillRepository skillRepository;
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	
	
	
	private final static Logger log = LoggerFactory.getLogger(EditController.class);
	
	
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String getEditPage(Model model) {
		model.addAttribute("profile", profileRepository.findOne(1L));
		model.addAttribute("general",new GeneralForm());
		model.addAttribute("contacts",new Contacts());
		model.addAttribute("skills",new SkillForm(profileRepository.findOne(1L).getSkills()));
		model.addAttribute("skillCategories",skillCategoryRepository.findAll(new Sort("id")));
		model.addAttribute("practics",new PracticForm(profileRepository.findOne(1L).getPractics()));
		model.addAttribute("certificates",new CertificateForm(profileRepository.findOne(2L).getCertificates()));
		
		return "/edit/profile";
		
	}

	@RequestMapping(value = "/uploadFile", method = RequestMethod.POST, params = "SubmitGeneral")
	String uploadUserImage(@ModelAttribute("general") GeneralForm general,Model model,BindingResult bindingResult) throws  IOException {
		
		// TODO Services for generation uid et
		// TODO Service saving file to folder
		// TODO Service 
		log.info("My general form = {}", general.getBirthDay()+"/t"  + general.getEmail());
		MultipartFile file = general.getPhoto();
		if (!file.isEmpty()) {
			try {
				String uploadsDir = "/uploads/";
				String realPathtoUploads = request.getServletContext().getRealPath(uploadsDir);
				if (!new File(realPathtoUploads).exists()) {
					new File(realPathtoUploads).mkdir();
				}

				log.info("realPathtoUploads = {}", realPathtoUploads);

				String orgName = file.getOriginalFilename();
				String filePath = realPathtoUploads + orgName;
				File dest = new File(filePath);
				
				file.transferTo(dest);
				
				String pathInJSPString = file.getOriginalFilename();
				log.info("path in JSP = {}", pathInJSPString);
				model.addAttribute("file", file);
				
			} finally {
				
			}
			
		}
		return getEditPage(model);
		
	}
	
	@RequestMapping(value = "/contacts", method = RequestMethod.POST,params = "SubmitContacts")
	String editContacts(@ModelAttribute("contacts")Contacts contacts, BindingResult bindingResult) {
		
		
		return "redirect:/mike-ross";
	}
	@RequestMapping(value = "/skills", method = RequestMethod.POST,params = "SubmitSkills")
	String editSkills(@ModelAttribute("skills")SkillForm skills,BindingResult bindingResult) {
		
		//TODO Update skills indb
		return "redirect:/mike-ross";
	}
	
	@RequestMapping(value = "/practics", method = RequestMethod.POST)
	String editPractics(@ModelAttribute("practics")PracticForm practics,BindingResult bindingResult) {
		
		//TODO Update skills indb
		return "redirect:/mike-ross";
	}
	
	@RequestMapping(value = "/certificates", method = RequestMethod.POST)
	String editPractics(@ModelAttribute("certificates")CertificateForm certificates,BindingResult bindingResult) {
		
		//TODO Update skills indb
		return "redirect:/mike-ross";
	}
	
	private String goToSkillsJsp(Model model) {
		model.addAttribute("skillCategories",skillRepository.findAll(new Sort("id")));
		return "edit/profile";
	}
	
	
	
}
