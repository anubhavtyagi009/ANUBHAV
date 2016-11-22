package com.niit.catsuppro.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.niit.catsuppro.dao.UserDAO;
import com.niit.catsuppro.model.User;

@Component
public class RegistrationHandler {
	
	@Autowired
	UserDAO userDAO;


	public User initFlow(){
		return new User();
	}

	public String validateDetails(User user,MessageContext messageContext){
		String status = "success";
		/*if(user.getUser_id()==0){
			messageContext.addMessage(new MessageBuilder().error().source(
					"id").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}*/
		if(user.getUser_name().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("name").defaultText("UserName cannt be empty").build());
			status="failure";
		}
		if(user.getUser_pass().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
	
		if(user.getUser_email().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		/*if(user.getMob_no().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mobile").defaultText("Mobile cannot be Empty").build());
			status = "failure";
		}
		if(user.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}*/
		
		return status;
	}
	
	public String saveDetails(User user){
		userDAO.usave(user);
		return "success";
	}
	
	


}
