package com.min.vo;

import org.springframework.web.multipart.MultipartFile;

public class FVO {
	private String fid, f_num, f_name, f_explain, f_category, f_image, f_content, f_content2, f_tan, f_dan, f_ji, f_kcal, f_video;
	private MultipartFile file_name;
	
	
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getF_num() {
		return f_num;
	}
	public void setF_num(String f_num) {
		this.f_num = f_num;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getF_explain() {
		return f_explain;
	}
	public void setF_explain(String f_explain) {
		this.f_explain = f_explain;
	}
	public String getF_category() {
		return f_category;
	}
	public void setF_category(String f_category) {
		this.f_category = f_category;
	}
	public String getF_image() {
		return f_image;
	}
	public void setF_image(String f_image) {
		this.f_image = f_image;
	}
	public String getF_content() {
		return f_content;
	}
	public void setF_content(String f_content) {
		this.f_content = f_content;
	}
	public String getF_content2() {
		return f_content2;
	}
	public void setF_content2(String f_content2) {
		this.f_content2 = f_content2;
	}
	public String getF_tan() {
		return f_tan;
	}
	public void setF_tan(String f_tan) {
		this.f_tan = f_tan;
	}
	public String getF_dan() {
		return f_dan;
	}
	public void setF_dan(String f_dan) {
		this.f_dan = f_dan;
	}
	public String getF_ji() {
		return f_ji;
	}
	public void setF_ji(String f_ji) {
		this.f_ji = f_ji;
	}
	public String getF_kcal() {
		return f_kcal;
	}
	public void setF_kcal(String f_kcal) {
		this.f_kcal = f_kcal;
	}
	public String getF_video() {
		return f_video;
	}
	public void setF_video(String f_video) {
		this.f_video = f_video;
	}
	public MultipartFile getFile_name() {
		return file_name;
	}
	public void setFile_name(MultipartFile file_name) {
		this.file_name = file_name;
	}
	
}
