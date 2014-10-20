package com.qiuguo.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Stock {

	private int id;
	private String name;
	private int count;
	private String oprater;
	private int price;
	private String type;
	private String note;
	private Date date;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getOprater() {
		return oprater;
	}
	public void setOprater(String oprater) {
		this.oprater = oprater;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Date getDate(){
		return this.date;
	}
	public void setDate(Date date){
		this.date = date;
	}
	@Override
	public String toString() {
		return "Stock [id=" + id + ", name=" + name + ", count=" + count
				+ ", oprater=" + oprater + ", price=" + price + ", type="
				+ type + ", note=" + note + ", date=" + date + "]";
	}
	
	
	
}
