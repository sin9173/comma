package model;

import java.util.ArrayList;
import java.util.HashMap;

public class Address {

	private HashMap<String, Object> meta;
	
	private ArrayList<Documents> documents;

	public HashMap<String, Object> getMeta() {
		return meta;
	}

	public void setMeta(HashMap<String, Object> meta) {
		this.meta = meta;
	}

	public ArrayList<Documents> getDocuments() {
		return documents;
	}

	public void setDocuments(ArrayList<Documents> documents) {
		this.documents = documents;
	}

	@Override
	public String toString() {
		return "Address [meta=" + meta + ", documents=" + documents + "]";
	}

	public Address(HashMap<String, Object> meta, ArrayList<Documents> documents) {
		super();
		this.meta = meta;
		this.documents = documents;
	}

	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
