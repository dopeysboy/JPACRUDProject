package com.skilldistillery.dnd.entities;

import static org.junit.jupiter.api.Assertions.*;

import java.awt.datatransfer.SystemFlavorMap;
import java.util.StringTokenizer;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CampaignTests {

	private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("DndCampaignTracker");
	private EntityManager em;
	private Campaign camp;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		camp = em.find(Campaign.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		camp = null;
	}

	@Test
	void test_Campaign_mapping() {
		String expName = "Curse Of Strahd";
		String expDesc = "Adventurers must defeat the vampire Strahd in the land of Barovia";
		
		assertEquals(expName, camp.getName());
		assertEquals(expDesc, camp.getDescription());
	}

}
