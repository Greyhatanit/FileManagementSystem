package com.anit.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/*
 * @Author Anit Chaudhary
 * Data Transfer Model for File Uploading
 */
@Entity
@Table(name = "fileinfo")
public class FileUpload {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "contractno")
	private int contractno;
	@Column(name="filename")
	private String filename;
	@Column(name="account_no")
	private int account_no;
	@Column(name="caption")
	private String caption;
	@Column(name="description")
	private String description;
	@Column(name="path")
	private String path;
	@Column(name="handler")
	private String handler;
	@Column(name="date")
	private String date;
	public int getContractno() {
		return contractno;
	}
	public void setContractno(int contractno) {
		this.contractno = contractno;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getAccount_no() {
		return account_no;
	}
	public void setAccount_no(int account_no) {
		this.account_no = account_no;
	}
	public String getCaption() {
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
