package com.models;

public class DoctorDetails {
	private int doc_id;
	private String doc_name, doc_qual, doc_spec;
	private int doc_exp;
	private String doc_img;

	public DoctorDetails() {

	}

	public DoctorDetails(int doc_id, String doc_name, String doc_qual, String doc_spec, int doc_exp, String doc_img) {
		super();
		this.doc_id = doc_id;
		this.doc_name = doc_name;
		this.doc_qual = doc_qual;
		this.doc_spec = doc_spec;
		this.doc_exp = doc_exp;
		this.doc_img = doc_img;
	}

	public int getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(int doc_id) {
		this.doc_id = doc_id;
	}

	public String getDoc_name() {
		return doc_name;
	}

	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}

	public String getDoc_qual() {
		return doc_qual;
	}

	public void setDoc_qual(String doc_qual) {
		this.doc_qual = doc_qual;
	}

	public String getDoc_spec() {
		return doc_spec;
	}

	public void setDoc_spec(String doc_spec) {
		this.doc_spec = doc_spec;
	}

	public int getDoc_exp() {
		return doc_exp;
	}

	public void setDoc_exp(int doc_exp) {
		this.doc_exp = doc_exp;
	}

	public String getDoc_img() {
		return doc_img;
	}

	public void setDoc_img(String doc_img) {
		this.doc_img = doc_img;
	}
}