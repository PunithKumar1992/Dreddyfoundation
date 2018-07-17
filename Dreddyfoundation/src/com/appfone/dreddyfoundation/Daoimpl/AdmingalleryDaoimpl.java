package com.appfone.dreddyfoundation.Daoimpl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.appfone.dreddyfoundation.Dao.AdmingalleryDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfgallarey;


@Repository
public class AdmingalleryDaoimpl implements AdmingalleryDao {

	@Autowired
	private SessionFactory factory;
	@Override
	public void savegalleryImg(Dreddyfgallarey galleryimg) {
		Session session = factory.openSession();
		session.save(galleryimg);
	}
	@Override
	public List<Dreddyfgallarey> allimglist() {
		Session session = factory.getCurrentSession();
		Query query = session.createQuery("from Dreddyfgallarey");
		List<Dreddyfgallarey>list = query.list();
		return list;
	}
	@Override
	public void deletegalleryImg(int gallery_id) {
		Session session= factory.getCurrentSession();
		Query query = session.createQuery("delete from Dreddyfgallarey where galleryimg_id =:gid");
		query.setParameter("gid", gallery_id);
		int res= query.executeUpdate();
		
		
	}

}
