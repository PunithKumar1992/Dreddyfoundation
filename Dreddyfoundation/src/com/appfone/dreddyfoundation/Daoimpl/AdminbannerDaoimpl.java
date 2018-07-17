package com.appfone.dreddyfoundation.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.dreddyfoundation.Dao.AdminbannerDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfbanner;

@Repository
public class AdminbannerDaoimpl implements AdminbannerDao {

	@Autowired
	SessionFactory factory;

	
	@Override
	public List<Dreddyfbanner> getallbannerlist() {
		Session session = factory.openSession();
		Query query = session.createQuery("from Dreddyfbanner");
		List<Dreddyfbanner> list = query.list();
		return list;
	}
	
	@Override
	public int getbannersize() {
		int size = 0;
		Session session = factory.getCurrentSession();

		Query query = session.createQuery("select count(*) from Dreddyfbanner");
		List list = query.list();
		Iterator itr = list.iterator();
		size = Integer.parseInt(itr.next().toString());

		return size;

	}


	@Override
	public void deletebanner(int banner_id) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("delete from Dreddyfbanner where banner_id = :bid");
		query.setParameter("bid", banner_id);
		int res = query.executeUpdate();

	}

	@Override
	public void saveBanner(Dreddyfbanner banner) {
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(banner);

	}

	@Override
	public Dreddyfbanner getSinglebanner(int banner_id) {
		Session session = factory.getCurrentSession();
		Dreddyfbanner editbanner = session.get(Dreddyfbanner.class, banner_id);

		return editbanner;
	}

}
