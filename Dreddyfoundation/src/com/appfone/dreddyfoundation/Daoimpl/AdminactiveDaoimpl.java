package com.appfone.dreddyfoundation.Daoimpl;

import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.dreddyfoundation.Dao.AdminactiveDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfadminregiestration;

@Repository
public class AdminactiveDaoimpl implements AdminactiveDao {

	@Autowired
	private SessionFactory factory;
	
	@Override
	public List<Dreddyfadminregiestration> getCurrentuser(String username, String password) {
	
		Session session = factory.openSession();
		Query query = session.createQuery("from Dreddyfadminregiestration where admin_name =:uname and admin_password = :upwd");
		query.setParameter("uname", username);
		query.setParameter("upwd", password);
		List<Dreddyfadminregiestration> list = query.list();
		return list;
	}

	@Override
	public List<Dreddyfadminregiestration> getalladmin() {
		Session session = factory.getCurrentSession();
		Query query= session.createQuery("from Dreddyfadminregiestration");
		List<Dreddyfadminregiestration>list = query.list();
		return list;
	}

	@Override
	public void deleteSingleAdmin(int id) {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("delete from Dreddyfadminregiestration where admin_id =: aid");
		query.setParameter("aid", id);
		int res= query.executeUpdate();
		

		
	}

	@Override
	public Dreddyfadminregiestration getSingleadmin(int id) {
		Session session=factory.getCurrentSession();
		Dreddyfadminregiestration singleadmin = session.get(Dreddyfadminregiestration.class, id);
		return singleadmin;
		
	}

	@Override
	public void saveAdmin(Dreddyfadminregiestration newadmin) {
		
		Session session = factory.getCurrentSession();
		session.saveOrUpdate(newadmin);
		
	}

	@Override
	public int checkadminNameavailable(String adminname) {
	Session session = factory.getCurrentSession();
	Query query = session.createQuery("from Dreddyfadminregiestration where admin_name = :adname");
	query.setParameter("adname", adminname);
	List list = query.list();
	int flag=0;
	 if(list.size()>0)
	 {
		 flag=1;
	 }
	
		return flag;
	}

	

}
