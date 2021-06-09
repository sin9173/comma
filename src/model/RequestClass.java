package model;

import java.util.Date;

public class RequestClass {

	private int number;
	private String id;
	private String c_category;
	private String content;
	private boolean c_type;
	private String c_location;
	private int r_status;
	private String c_startday;
	private String c_starttime;
	private String c_classtime;
	private int c_member;
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
	public String getC_category() {
		return c_category;
	}
	public void setC_category(String c_category) {
		this.c_category = c_category;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public boolean isC_type() {
		return c_type;
	}
	public void setC_type(boolean c_type) {
		this.c_type = c_type;
	}
	public String getC_location() {
		return c_location;
	}
	public void setC_location(String c_location) {
		this.c_location = c_location;
	}
	public int getR_status() {
		return r_status;
	}
	public void setR_status(int r_status) {
		this.r_status = r_status;
	}
	public String getC_startday() {
		return c_startday;
	}
	public void setC_startday(String c_startday) {
		this.c_startday = c_startday;
	}
	public String getC_starttime() {
		return c_starttime;
	}
	public void setC_starttime(String c_starttime) {
		this.c_starttime = c_starttime;
	}
	public String getC_classtime() {
		return c_classtime;
	}
	public void setC_classtime(String c_classtime) {
		this.c_classtime = c_classtime;
	}
	public int getC_member() {
		return c_member;
	}
	public void setC_member(int c_member) {
		this.c_member = c_member;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
	@Override
	public String toString() {
		return "RequestClass [number=" + number + ", id=" + id + ", c_category=" + c_category + ", content=" + content
				+ ", c_type=" + c_type + ", c_location=" + c_location + ", r_status=" + r_status + ", c_startday="
				+ c_startday + ", c_starttime=" + c_starttime + ", c_classtime=" + c_classtime + ", c_member="
				+ c_member + ", date=" + date + "]";
	}
	public RequestClass() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RequestClass(int number, String id, String c_category, String content, boolean c_type, String c_location, int r_status,
			String c_startday, String c_starttime, String c_classtime, int c_member, Date date) {
		super();
		
		this.number = number;
		this.id = id;
		this.c_category = c_category;
		this.content = content;
		this.c_type = c_type;
		this.c_location = c_location;
		this.r_status = r_status;
		this.c_startday = c_startday;
		this.c_starttime = c_starttime;
		this.c_classtime = c_classtime;
		this.c_member = c_member;
		this.date = date;
	}
	
	
	
	
	
}
