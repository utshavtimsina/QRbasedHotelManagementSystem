package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Purchase {

Purchase(){
	
}
	@Id
	@GeneratedValue
	public int id;
	public int tableNo;
	public int item_no;
	public int quantity;
	public int status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTableNo() {
		return tableNo;
	}
	public void setTableNo(int tableNo) {
		this.tableNo = tableNo;
	}
	public int getItem_no() {
		return item_no;
	}
	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Purchase [id=" + id + ", tableNo=" + tableNo + ", item_no=" + item_no + ", quantity=" + quantity
				+ ", status=" + status + "]";
	}
	public Purchase(int id, int tableNo, int item_no, int quantity, int status) {
		super();
		//this.id = id;
		this.tableNo = tableNo;
		this.item_no = item_no;
		this.quantity = quantity;
		this.status = status;
	}
	
	
}
