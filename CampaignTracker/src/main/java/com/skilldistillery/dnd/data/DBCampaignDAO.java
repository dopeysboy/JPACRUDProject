package com.skilldistillery.dnd.data;

import java.util.List;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.dnd.entities.Campaign;

@Service
@Transactional
public class DBCampaignDAO implements CampaignDAO{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Campaign getCampaignById(int id) {
		return em.find(Campaign.class, id);
	}

	@Override
	public boolean destroyCampaign(int id) {
		Campaign camp = em.find(Campaign.class, id);
		em.remove(camp);
		em.flush();
		return !em.contains(camp);
	}

	@Override
	public List<Campaign> getAllCampaigns() {
		String query = "SELECT c FROM Campaign c";
		
		return em.createQuery(query, Campaign.class).getResultList();
	}

	@Override
	public Campaign updateCampaign(Campaign newCamp, int oldCampId) {
		Campaign toUpdate = em.find(Campaign.class, oldCampId);
		toUpdate = newCamp;
		em.flush();
		return toUpdate;
	}

	@Override
	public Campaign createCampaign(Campaign newCamp) {
		try {
			em.persist(newCamp);
			em.flush();
			return newCamp;
		} catch(EntityExistsException e) {
			return null;
		}
	}

}
