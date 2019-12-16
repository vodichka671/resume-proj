package com.mag.resume.form;

import java.util.ArrayList;
import java.util.List;

import com.mag.resume.entity.Certificate;

public class CertificateForm {
	
	private List<Certificate> items = new ArrayList<>();
	
	public CertificateForm() {
		super();
	}

	public CertificateForm(List<Certificate> items) {
		super();
		this.items = items;
	}

	public List<Certificate> getItems() {
		return items;
	}

	public void setItems(List<Certificate> items) {
		this.items = items;
	}
}
