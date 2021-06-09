package model;

import java.util.Date;

public class Question {
	private int number;
	private String content;
	private String title;
	private String id;
	private Date date;
	
	
	public Question(int number, String content, String title, String id, Date date) {
		super();
		this.number = number;
		this.content = content;
		this.title = title;
		this.id = id;
		this.date = date;
	}
	
	
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
	public void setId(String id) {
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
		return "Question [number=" + number + ", content=" + content + ", title=" + title
				+ ", id=" + id + ", date=" + date + "]";
	}
	
	public Question() {
		super();
		// TODO Auto-generated constructor stub
	}

}
