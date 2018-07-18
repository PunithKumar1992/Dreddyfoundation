package com.appfone.dreddyfoundation.Service;

import java.util.List;

import com.appfone.dreddyfoundation.Pojo.Dreddyfarticle;


public interface AdminarticleService {

	public void saveArticle(Dreddyfarticle article);
	public List<Dreddyfarticle> getallarticle();
	public Dreddyfarticle getsinglearticle(int articleid);
	public int articlecount();
	public void deletearticle(int article_id);
	public void updatearticle(Dreddyfarticle article);
}
