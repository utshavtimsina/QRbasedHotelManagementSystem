package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Menu;
import com.example.demo.model.Purchase;
import com.example.demo.services.UserServices;

@RestController
public class Controller {

		@RequestMapping("/")
		String show() {
			return "welcome";
		}
		
		
		@Autowired
		UserServices service;
		
		@RequestMapping("/orders")
		public Object orderList(@RequestParam int table_no) {
			return  service.myOrders(table_no);
			//return null;
			
		}
		@RequestMapping("/tableNo")
	void shows(@RequestParam int id,@RequestParam int table_no,@RequestParam int item_no,@RequestParam int quantity) {
			Purchase purchase= new Purchase(id,table_no,item_no,quantity );
			service.addToPurchase(purchase);
			//return purchase.toString();
			
			
		}
		@RequestMapping("/welcome")
		public Object menuItems() {
			return service.menuItemss();
			
		}
		
}
