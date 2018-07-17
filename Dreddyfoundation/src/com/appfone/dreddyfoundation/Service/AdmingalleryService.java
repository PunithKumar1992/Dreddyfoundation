package com.appfone.dreddyfoundation.Service;

import java.util.List;

import com.appfone.dreddyfoundation.Pojo.Dreddyfgallarey;

public interface AdmingalleryService {
	
	public void savegalleryImg(Dreddyfgallarey galleryimg);
	public List<Dreddyfgallarey> allimglist();
	public void deletegalleryImg(int gallery_id);

}
