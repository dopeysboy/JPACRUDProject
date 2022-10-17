package com.skilldistillery.dnd.data;

import com.skilldistillery.dnd.entities.User;

public interface UserDAO {	
	User getUserByUsrNamePass(String username, String password);
	
	User createUser(String username, String password);
	
	boolean destroyUser(int id);
	
	User updatePassword(User user, String password);
}
