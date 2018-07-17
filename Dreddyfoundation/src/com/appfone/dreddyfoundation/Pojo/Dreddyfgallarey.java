package com.appfone.dreddyfoundation.Pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="dreddyfgallarey")
public class Dreddyfgallarey {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="galleryimg_id")
	private int galleryimg_id;
	@Column(name="gallery_image")
	private String gallery_image;
	@Column(name="galleryimg_type")
	private String galleryimg_type;
	
	@Transient
	private MultipartFile galleryfile;

	public int getGalleryimg_id() {
		return galleryimg_id;
	}

	public void setGalleryimg_id(int galleryimg_id) {
		this.galleryimg_id = galleryimg_id;
	}

	public String getGallery_image() {
		return gallery_image;
	}

	public void setGallery_image(String gallery_image) {
		this.gallery_image = gallery_image;
	}

	public String getGalleryimg_type() {
		return galleryimg_type;
	}

	public void setGalleryimg_type(String galleryimg_type) {
		this.galleryimg_type = galleryimg_type;
	}

	public MultipartFile getGalleryfile() {
		return galleryfile;
	}

	public void setGalleryfile(MultipartFile galleryfile) {
		this.galleryfile = galleryfile;
	}
	
	
	

}
