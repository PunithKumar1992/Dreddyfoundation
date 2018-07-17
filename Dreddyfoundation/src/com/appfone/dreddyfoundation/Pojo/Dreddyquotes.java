package com.appfone.dreddyfoundation.Pojo;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="dreddyquotes")
public class Dreddyquotes {
	
	private int quote_id;
	private String quote_msg;

}
