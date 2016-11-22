package com.niit.catsuppro.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.catsuppro.model.User;

@Repository("userDAO")
public interface UserDAO {

	public boolean usave(User user);
	
	public List<User> userlist();
	public User getByUserName(String uname);
	public User getByUserId(int uid);
}
