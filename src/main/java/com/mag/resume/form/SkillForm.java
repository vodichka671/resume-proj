package com.mag.resume.form;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.mag.resume.entity.Skill;

public class SkillForm implements Serializable{
	private static final long serialVersionUID = -9055011707576154529L;
	List<Skill> items = new ArrayList<Skill>();
	
	public SkillForm() {
		super();
	}
	

	public SkillForm(List<Skill> items) {
		super();
		this.items = items;
	}


	public List<Skill> getItems() {
		return items;
	}

	public void setItems(List<Skill> items) {
		this.items = items;
	}

	
	

}
