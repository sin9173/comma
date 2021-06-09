package model;

import java.util.Date;

public class Log {
	
	private int number;
	private int type;
	private String id;
	private String title;
	private Date date;
	private String chat;
	private String c_name;
	private int c_price;
	private String purchase;
	private String enrollType;
	private boolean tradestatus;
	private String c_startday;
	private String c_endday;
	private String c_classtime;
	private String t_name;
	
	
	
	
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getChat() {
		return chat;
	}
	public void setChat(String chat) {
		this.chat = chat;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public int getC_price() {
		return c_price;
	}
	public void setC_price(int c_price) {
		this.c_price = c_price;
	}
	public String getPurchase() {
		return purchase;
	}
	public void setPurchase(String purchase) {
		this.purchase = purchase;
	}
	public String getEnrollType() {
		return enrollType;
	}
	public void setEnrollType(String enrollType) {
		this.enrollType = enrollType;
	}
	public boolean isTradestatus() {
		return tradestatus;
	}
	public void setTradestatus(boolean tradestatus) {
		this.tradestatus = tradestatus;
	}
	public String getC_startday() {
		return c_startday;
	}
	public void setC_startday(String c_startday) {
		this.c_startday = c_startday;
	}
	public String getT_name() {
		return t_name;
	}
	public void setT_name(String t_name) {
		this.t_name = t_name;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Log [number=" + number + ", type=" + type + ", id=" + id + ", title=" + title + ", date=" + date
				+ ", chat=" + chat + ", c_name=" + c_name + ", c_price=" + c_price + ", purchase=" + purchase
				+ ", enrollType=" + enrollType + ", tradestatus=" + tradestatus + ", c_startday=" + c_startday
				+ ", c_endday=" + c_endday + ", c_classtime=" + c_classtime + ", t_name=" + t_name + "]";
	}
	
	public Log(int number, int type, String id, String title, Date date, String chat, String c_name, int c_price, String purchase,
			String enrollType, boolean tradestatus, String c_startday, String t_name, String c_endday, String c_classtime) {
		super();
		this.number = number;
		this.type = type;
		this.id = id;
		this.title = title;
		this.date = date;
		this.chat = chat;
		this.c_name = c_name;
		this.c_price = c_price;
		this.purchase = purchase;
		this.enrollType = enrollType;
		this.tradestatus = tradestatus;
		this.c_startday = c_startday;
		this.c_endday = c_endday;
		this.c_classtime = c_classtime;
		this.t_name = t_name;
	}
	public Log() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getC_endday() {
		return c_endday;
	}
	public void setC_endday(String c_endday) {
		this.c_endday = c_endday;
	}
	public String getC_classtime() {
		return c_classtime;
	}
	public void setC_classtime(String c_classtime) {
		this.c_classtime = c_classtime;
	}
	
	
	
	

}
