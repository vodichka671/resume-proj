package com.mag.resume.form;

import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class GeneralForm implements Serializable{
	private static final long serialVersionUID = 2519760103926498897L;
	private MultipartFile photo;
	private String birthDay;
	private String country;
	private String phone;
	private String objective;
	private String summary;
	
	public GeneralForm() {
		super();
	}
	public GeneralForm(MultipartFile photo, String birthDay, String country, String city, String email) {
		super();
		this.photo = photo;
		this.birthDay = birthDay;
		this.country = country;
		this.city = city;
		Email = email;
	}
	
	
	public String getObjective() {
		return objective;
	}
	public void setObjective(String objective) {
		this.objective = objective;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
	public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	private String city;
	private String Email;
	
	
}
