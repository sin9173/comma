package model;

import java.util.Date;

public class Review {

	
	private String image;
	private String content;
	private String id;
	private int number;
	private int c_score;
	private Date date;
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
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
	public int getNumber() {
		return number;
	}
	@Override
	public String toString() {
		return "Review [image=" + image + ", content=" + content + ", id=" + id + ", number=" + number
				+ ", c_score=" + c_score + ", date=" + date + "]";
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getC_score() {
		return c_score;
	}
	public void setC_score(int c_score) {
		this.c_score = c_score;
	}
	
	public Review(String image, String content, String id, int number, int c_score, Date date) {
		super();
		this.image = image;
		this.content = content;
		this.id = id;
		this.number = number;
		this.c_score = c_score;
		this.date = date;
	}
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
