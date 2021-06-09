package model;

import java.util.Date;

public class BlackList {

	private int number;
	private String id;
	private String content;
	private Date date;
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "BlackList [number=" + number + ", id=" + id + ", content=" + content + ", date=" + date + "]";
	}
	
	public BlackList(int number, String id, String content, Date date) {
		super();
		this.number = number;
		this.id = id;
		this.content = content;
		this.date = date;
	}
	
}

	
