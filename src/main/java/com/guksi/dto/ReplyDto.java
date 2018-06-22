package com.guksi.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class ReplyDto {
	
	private int reply_no;
	private String reply_content;
	@DateTimeFormat(iso=ISO.DATE)
	private Date reply_date;
	
	public ReplyDto() {
		super();
	}

	public ReplyDto(int reply_no, String reply_content, Date reply_date) {
		this.reply_no = reply_no;
		this.reply_content = reply_content;
		this.reply_date = reply_date;

	}

	public int getReply_no() {
		return reply_no;
	}

	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}

	public String getReply_comment() {
		return reply_content;
	}

	public void setReply_comment(String reply_content) {
		this.reply_content = reply_content;
	}

	public Date getReply_date() {
		return reply_date;
	}

	public void setReply_date(Date reply_date) {
		this.reply_date = reply_date;
	}

		@Override
	public String toString() {
		return "ReplyDto [reply_no=" + reply_no + ", reply_comment=" + reply_content + ", reply_date=" + reply_date
				+ "]";
	}
}
