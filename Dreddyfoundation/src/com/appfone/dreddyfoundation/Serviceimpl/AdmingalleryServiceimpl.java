package com.appfone.dreddyfoundation.Serviceimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.dreddyfoundation.Dao.AdmingalleryDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfgallarey;
import com.appfone.dreddyfoundation.Service.AdmingalleryService;

@Service
public class AdmingalleryServiceimpl implements AdmingalleryService {
	
	@Autowired
	private AdmingalleryDao gallerydao;

	@Override
	@Transactional
	public void savegalleryImg(Dreddyfgallarey galleryimg) {
		gallerydao.savegalleryImg(galleryimg);
	}

	@Override
	@Transactional
	public List<Dreddyfgallarey> allimglist() {
		List<Dreddyfgallarey> list = gallerydao.allimglist();
		return list;
	}

	@Override
	@Transactional
	public void deletegalleryImg(int gallery_id) {
		gallerydao.deletegalleryImg(gallery_id);
		

	}

}
