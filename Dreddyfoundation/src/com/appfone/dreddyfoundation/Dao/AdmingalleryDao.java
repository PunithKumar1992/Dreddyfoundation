package com.appfone.dreddyfoundation.Dao;

import java.util.List;

import com.appfone.dreddyfoundation.Pojo.Dreddyfgallarey;

public interface AdmingalleryDao {
	
	public void savegalleryImg(Dreddyfgallarey galleryimg);
	public List<Dreddyfgallarey> allimglist();
	public void deletegalleryImg(int gallery_id);

}
