package com.example.demo.services;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.model.Menu;
import com.example.demo.model.Purchase;
import com.example.demo.repository.MenuRepository;
import com.example.demo.repository.UserRepository;

@Component
public class UserServices {
	 @Autowired 
	   UserRepository repository;
	 @Autowired 
	   MenuRepository menu;
	   
	 public void UserService(UserRepository userRepository) {
		 this.repository=userRepository;
	 }
	 public void addToPurchase(Purchase purchase) {
		 repository.save(purchase);
	}
	public List<Purchase> myOrders(int id) {
		
		return  repository.findByTableNo(id);
	 }
	 
	public Object menuItemss(){
		
		
		return   menu.findAll();
	}
	
	
}
