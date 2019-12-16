package com.mag.resume.form;

import java.util.ArrayList;
import java.util.List;

import com.mag.resume.entity.Practic;

public class PracticForm {
	
	private List<Practic> items = new ArrayList<>();
	
	public PracticForm() {
		super();
	}

	public PracticForm(List<Practic> items) {
		super();
		this.items = items;
	}

	public List<Practic> getItems() {
		return items;
	}

	public void setItems(List<Practic> items) {
		this.items = items;
	}
}