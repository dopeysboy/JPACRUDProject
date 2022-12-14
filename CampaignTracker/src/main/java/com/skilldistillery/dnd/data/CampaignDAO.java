package com.skilldistillery.dnd.data;

import java.util.List;

import com.skilldistillery.dnd.entities.Campaign;

public interface CampaignDAO {
	Campaign getCampaignById(int id);
	
	boolean destroyCampaign(int id);
	
	List<Campaign> getAllCampaigns();
	
	Campaign updateCampaign(Campaign newCamp, int oldCampId);
	
	Campaign createCampaign(Campaign newCamp);
	
	List<Campaign> getCampaignsByKeyword(String term);
	
	List<Campaign> getCampaignsBySetting(String setting);
	
	List<Campaign> getCampaignsByUser(String user); 
}
