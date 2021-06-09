package model;

import java.util.HashMap;

public class Access_token {

	
	private String code;
	private String message;
	private HashMap<String, Object> response;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public HashMap<String, Object> getResponse() {
		return response;
	}
	public void setResponse(HashMap<String, Object> response) {
		this.response = response;
	}
	@Override
	public String toString() {
		return "Access_token [code=" + code + ", message=" + message + ", response=" + response + "]";
	}
	public Access_token(String code, String message, HashMap<String, Object> response) {
		super();
		this.code = code;
		this.message = message;
		this.response = response;
	}
	public Access_token() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
