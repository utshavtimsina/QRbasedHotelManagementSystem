package com.example.demo.model;

import javax.persistence.GeneratedValue;
import javax.persistence.*;

@Entity

public class Categories {
@Id
@GeneratedValue
public int id;
public String CategoryName;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCategoryName() {
	return CategoryName;
}
public void setCategoryName(String categoryName) {
	CategoryName = categoryName;
}
@Override
public String toString() {
	return "Categories [id=" + id + ", CategoryName=" + CategoryName + "]";
}
public Categories(int id, String categoryName) {
	super();
	this.id = id;
	CategoryName = categoryName;
}
public Categories() {
	super();
}

}
