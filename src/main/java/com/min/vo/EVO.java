package com.min.vo;

import org.springframework.web.multipart.MultipartFile;

public class EVO {
	private String eid, e_num, e_name, e_explain, e_category, e_part, e_image, e_content, e_video;
	private MultipartFile f_name;

	public MultipartFile getF_name() {
		return f_name;
	}
	
	public void setF_name(MultipartFile f_name) {
		this.f_name = f_name;
	}
	
	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getE_num() {
		return e_num;
	}

	public void setE_num(String e_num) {
		this.e_num = e_num;
	}

	public String getE_name() {
		return e_name;
	}

	public void setE_name(String e_name) {
		this.e_name = e_name;
	}

	public String getE_explain() {
		return e_explain;
	}

	public void setE_explain(String e_explain) {
		this.e_explain = e_explain;
	}

	public String getE_category() {
		return e_category;
	}

	public void setE_category(String e_category) {
		this.e_category = e_category;
	}

	public String getE_part() {
		return e_part;
	}

	public void setE_part(String e_part) {
		this.e_part = e_part;
	}

	public String getE_image() {
		return e_image;
	}

	public void setE_image(String e_image) {
		this.e_image = e_image;
	}

	public String getE_content() {
		return e_content;
	}

	public void setE_content(String e_content) {
		this.e_content = e_content;
	}

	public String getE_video() {
		return e_video;
	}

	public void setE_video(String e_video) {
		this.e_video = e_video;
	}

	
	
}
