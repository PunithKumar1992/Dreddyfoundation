package com.appfone.dreddyfoundation.Serviceimpl;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.appfone.dreddyfoundation.Dao.AdminarticleDao;
import com.appfone.dreddyfoundation.Pojo.Dreddyfarticle;
import com.appfone.dreddyfoundation.Service.AdminarticleService;


@Service
public class AdminarticleServiceimpl implements AdminarticleService {

	@Autowired
	private AdminarticleDao articledao;
	
	@Override
	@Transactional
	public void saveArticle(Dreddyfarticle article) {
	
		articledao.saveArticle(article);
	}

	@Override
	@Transactional
	public List<Dreddyfarticle> getallarticle() {
		List<Dreddyfarticle> list = articledao.getallarticle();
		return list;
	}

	@Override
	@Transactional
	public Dreddyfarticle getsinglearticle(int articleid) {
		Dreddyfarticle article = articledao.getsinglearticle(articleid);
		return article;
	}

	@Override
	@Transactional
	public int articlecount() {
		int size = articledao.articlecount();
		return size;
	}

	@Override
	@Transactional
	public void deletearticle(int article_id) {
		articledao.deletearticle(article_id);
		
	}

	@Override
	@Transactional
	public void updatearticle(Dreddyfarticle article) {
		articledao.updatearticle(article);
	}

}
