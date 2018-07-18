package com.appfone.dreddyfoundation.Service;

import java.util.List;

import com.appfone.dreddyfoundation.Pojo.Dreddyfquotes;

public interface AdminQuotesService {
	
	public void saveQuotes(Dreddyfquotes quotes);
	public List<Dreddyfquotes> getallQuotes();
	public Dreddyfquotes getQuoteById(int id);
	public void deleteQuoteById(int quoteid);

}
