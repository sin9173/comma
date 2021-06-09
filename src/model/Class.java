package model;

public class Class {
	
	private int c_number;
	private String c_name;
	private String c_category;
	private String id;
	private String c_image;
	private String c_content;
	private String c_price;
	private String c_location;
	private String c_type;
	private String c_startday;
	private String c_endday;
	private String c_starttime;
	private String c_classtime;
	private int c_member;
	private int c_score;
	private boolean c_state;
	
	
	
	public int getC_number() {
		return c_number;
	}
	public void setC_number(int c_number) {
		this.c_number = c_number;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_category() {
		return c_category;
	}
	public void setC_category(String c_category) {
		this.c_category = c_category;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getC_image() {
		return c_image;
	}
	public void setC_image(String c_image) {
		this.c_image = c_image;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public String getC_price() {
		return c_price;
	}
	public void setC_price(String c_price) {
		this.c_price = c_price;
	}
	public String getC_location() {
		return c_location;
	}
	public void setC_location(String c_location) {
		this.c_location = c_location;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public String getC_startday() {
		return c_startday;
	}
	public void setC_startday(String c_startday) {
		this.c_startday = c_startday;
	}
	public String getC_endday() {
		return c_endday;
	}
	public void setC_endday(String c_endday) {
		this.c_endday = c_endday;
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
	public int getC_score() {
		return c_score;
	}
	public void setC_score(int c_score) {
		this.c_score = c_score;
	}
	public boolean isC_state() {
		return c_state;
	}
	public void setC_state(boolean c_state) {
		this.c_state = c_state;
	}
	
	
	
	@Override
	public String toString() {
		return "Class [c_number=" + c_number + ", c_name=" + c_name + ", c_category=" + c_category + ", id=" + id
				+ ", c_image=" + c_image + ", c_content=" + c_content + ", c_price=" + c_price + ", c_location="
				+ c_location + ", c_type=" + c_type + ", c_startday=" + c_startday + ", c_endday=" + c_endday
				+ ", c_starttime=" + c_starttime + ", c_classtime=" + c_classtime + ", c_member=" + c_member
				+ ", c_score=" + c_score + ", c_state=" + c_state + "]";
	}
	public Class(int c_number, String c_name, String c_category, String id, String c_image, String c_content,
			String c_price, String c_location, String c_type, String c_startday, String c_endday, String c_starttime, int c_member, String c_classtime, 
			int c_score, boolean c_state ) {
		super();
		this.c_number = c_number;
		this.c_name = c_name;
		this.c_category = c_category;
		this.id = id;
		this.c_image = c_image;
		this.c_content = c_content;
		this.c_price = c_price;
		this.c_location = c_location;
		this.c_type = c_type;
		this.c_startday = c_startday;
		this.c_endday = c_endday;
		this.c_starttime = c_starttime;
		this.c_classtime = c_classtime;
		this.c_member = c_member;
		this.c_score = c_score;
		this.c_state = c_state;
	}
	public Class() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
