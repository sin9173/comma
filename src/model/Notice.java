package model;

import java.util.Date;

public class Notice {
	private int number;
	private String content;
	private String id;
	private String title;
	private Date date;
	
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void Id(String id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Notice [number=" + number + ", content=" + content + ", id=" + id
				+ ", title=" + title + ", date=" + date + "]";
	}
	
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int number, String content, String id, String title, Date date) {
		super();
		this.number = number;
		this.content = content;
		this.id = id;
		this.title = title;
		this.date = date;
	}
	

}
