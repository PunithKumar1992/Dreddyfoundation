package com.appfone.dreddyfoundation.Pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dreddyquotes")
public class Dreddyfquotes {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="quote_id")
	private int quote_id;
	
	@Column(name="quote_msg")
	private String quote_msg;

	public int getQuote_id() {
		return quote_id;
	}

	public void setQuote_id(int quote_id) {
		this.quote_id = quote_id;
	}

	public String getQuote_msg() {
		return quote_msg;
	}

	public void setQuote_msg(String quote_msg) {
		this.quote_msg = quote_msg;
	}
	
	
	

}
