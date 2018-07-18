package com.appfone.dreddyfoundation.Daoimpl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.dreddyfoundation.Dao.AdminQuotesDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfquotes;


@Repository
public class AdminQuotesDaoimpl implements AdminQuotesDao {

	
	@Autowired
	private SessionFactory factory;
	
	

	@Override
	public List<Dreddyfquotes> getallQuotes() {
		Session session = factory.openSession();
		Query query = session.createQuery("from Dreddyfquotes");
		List<Dreddyfquotes> list = query.list();
		return list;
	}

	@Override
	public void saveQuotes(Dreddyfquotes quotes) {
		Session session = factory.getCurrentSession();
		session.save(quotes);
		

	}

	@Override
	public Dreddyfquotes getQuoteById(int id) {
		Session session = factory.getCurrentSession();
		Dreddyfquotes quote = session.get(Dreddyfquotes.class, id);
		return quote;
	}

	@Override
	public void deleteQuoteById(int quoteid) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("delete from Dreddyfquotes where quote_id =:qid");
		query.setParameter("qid", quoteid);
		int res = query.executeUpdate();
		
		
	}
}
