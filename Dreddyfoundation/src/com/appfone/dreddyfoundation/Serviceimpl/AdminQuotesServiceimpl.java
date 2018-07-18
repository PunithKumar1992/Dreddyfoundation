package com.appfone.dreddyfoundation.Serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.dreddyfoundation.Dao.AdminQuotesDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfquotes;
import com.appfone.dreddyfoundation.Service.AdminQuotesService;

@Service
public class AdminQuotesServiceimpl implements AdminQuotesService {
	
	@Autowired
	private AdminQuotesDao quotesdao;

	@Override
	@Transactional
	public void saveQuotes(Dreddyfquotes quotes) {
		quotesdao.saveQuotes(quotes);

	}

	@Override
	@Transactional
	public List<Dreddyfquotes> getallQuotes() {
		List<Dreddyfquotes> list = quotesdao.getallQuotes();
		return list;
	}

	@Override
	@Transactional
	public Dreddyfquotes getQuoteById(int id) {
		Dreddyfquotes quote = quotesdao.getQuoteById(id);
		return quote;
	}

	@Override
	@Transactional
	public void deleteQuoteById(int quoteid) {
		quotesdao.deleteQuoteById(quoteid);
		
	}

}
