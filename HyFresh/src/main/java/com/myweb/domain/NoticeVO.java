package com.myweb.domain;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class NoticeVO {
	private static Logger logger = LoggerFactory.getLogger(NoticeVO.class);
	private int nno;
	private int mno;
	private String title;
	private String content;
	private String img;
	private Date regd8;
	private Date modd8;
	private int readcount;
	
	public NoticeVO() {}

	//write
	public NoticeVO(String title, String content, String img) {
		this.title = title;
		this.content = content;
		this.img = img;
	}

	//modify
	public NoticeVO(String title, String content, String img, int nno) {
		this.nno = nno;
		this.title = title;
		this.content = content;
		this.img = img;
	}

	public static Logger getLogger() {
		return logger;
	}

	public static void setLogger(Logger logger) {
		NoticeVO.logger = logger;
	}

	public int getNno() {
		return nno;
	}

	public void setNno(int nno) {
		this.nno = nno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getRegd8() {
		return regd8;
	}

	public void setRegd8(Date regd8) {
		this.regd8 = regd8;
	}

	public Date getModd8() {
		return modd8;
	}

	public void setModd8(Date modd8) {
		this.modd8 = modd8;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	
	
}
