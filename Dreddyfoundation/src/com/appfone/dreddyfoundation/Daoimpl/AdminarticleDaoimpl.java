package com.appfone.dreddyfoundation.Daoimpl;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.appfone.dreddyfoundation.Dao.AdminarticleDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfarticle;


@Repository
public class AdminarticleDaoimpl implements AdminarticleDao {

@Autowired
private SessionFactory factory;
	
	@Override
	public void saveArticle(Dreddyfarticle article) {
		Session session = factory.openSession();
		session.save(article);
		
	}

	@Override
	public List<Dreddyfarticle> getallarticle() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Dreddyfarticle");
		List<Dreddyfarticle>list = query.list();
		return list;
	}

	@Override
	public Dreddyfarticle getsinglearticle(int articleid) {
		Session session = factory.getCurrentSession();
		Dreddyfarticle article= session.get(Dreddyfarticle.class, articleid);
		return article;
	}

	@Override
	public int articlecount() {
		int size=0;
		Session session=factory.getCurrentSession();
		Query query=session.createQuery("select count(*) from  Dreddyarticle");
	
		List list=query.list();
		Iterator itr=list.iterator();
		size=Integer.parseInt(itr.next().toString());
		return size;
	}

	@Override
	public void deletearticle(int article_id) {
		Session session= factory.getCurrentSession();
		Query query = session.createQuery("delete from Dreddyfarticle where article_id =: artid");
		query.setParameter("artid", article_id);
		int res = query.executeUpdate();
		
		
	}

	@Override
	public void updatearticle(Dreddyfarticle article) {
		Session session = factory.getCurrentSession();
		session.update(article);
		
		
	}

	

}
