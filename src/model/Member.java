package model;

public class Member {

	private String id;
	private String name;
	private String email;
	private String password;
	private String p_number;
	private String regdate;
	private String image;
	private String t_idcard;
	private String t_career;
	private String t_license;
	private String t_sns;
	private String t_regdate;
	private int state;
	private String like;
	private int outpoint;

public void snsValue(String c_id,String c_pw,String c_email ) {
	this.id=c_id;
	this.password=c_pw;
	this.email=c_email;

}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getP_number() {
		return p_number;
	}
	public void setP_number(String p_number) {
		this.p_number = p_number;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getT_idcard() {
		return t_idcard;
	}
	public void setT_idcard(String t_idcard) {
		this.t_idcard = t_idcard;
	}
	public String getT_career() {
		return t_career;
	}
	public void setT_career(String t_career) {
		this.t_career = t_career;
	}
	public String getT_license() {
		return t_license;
	}
	public void setT_license(String t_license) {
		this.t_license = t_license;
	}
	public String getT_sns() {
		return t_sns;
	}
	public void setT_sns(String t_sns) {
		this.t_sns = t_sns;
	}
	public String getT_regdate() {
		return t_regdate;
	}
	public void setT_regdate(String t_regdate) {
		this.t_regdate = t_regdate;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getLike() {
		return like;
	}
	public void setLike(String like) {
		this.like = like;
	}
	public int getOutpoint() {
		return outpoint;
	}
	public void setOutpoint(int outpoint) {
		this.outpoint = outpoint;
	}
	
	
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", p_number="
				+ p_number + ", regdate=" + regdate + ", image=" + image + ", t_idcard=" + t_idcard + ", t_career="
				+ t_career + ", t_license=" + t_license + ", t_sns=" + t_sns + ", t_regdate=" + t_regdate + ", state="
				+ state + ", like=" + like + ", outpoint=" + outpoint + "]";
	}
	
	public Member(String id, String name, String email, String password, String p_number, int state, String t_idnumber,
			String image, String t_idcard, String t_career, String t_license, String t_sns, String t_regdate, String like, String regdate, int outpoint) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.p_number = p_number;
		this.state = state;
		this.image = image;
		this.t_idcard = t_idcard;
		this.t_career = t_career;
		this.t_license = t_license;
		this.t_sns = t_sns;
		this.t_regdate = t_regdate;
		this.like = like;
		this.regdate = regdate;
		this.outpoint = outpoint;
	}
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
