package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Menu {

	@Id 
	@GeneratedValue
	public int id;
	public String item_name;
	public int price;
	public int category;
	public String image;
	public Menu() {
		super();
	}
	@Override
	public String toString() {
		return "Menu [id=" + id + ", item_name=" + item_name + ", price=" + price + ", category=" + category
				+ ", image=" + image + "]";
	}
	public Menu(int id, String item_name, int price, int category, String image) {
		super();
		this.id = id;
		this.item_name = item_name;
		this.price = price;
		this.category = category;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	
	
}
