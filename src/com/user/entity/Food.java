package com.user.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Food entity. @author MyEclipse Persistence Tools
 */

public class Food implements java.io.Serializable {

	// Fields

	private Integer fid;
	private Restaurant restaurant;
	private Type type;
	private String fname;
	private Integer price;
	private Timestamp date;
	private String img;
	private String introduce;
	private String process;
	private Integer number;
	private Set orders = new HashSet(0);

	// Constructors

	/** default constructor */
	public Food() {
	}

	/** minimal constructor */
	public Food(Restaurant restaurant, Type type) {
		this.restaurant = restaurant;
		this.type = type;
	}

	/** full constructor */
	public Food(Restaurant restaurant, Type type, String fname, Integer price,
			Timestamp date, String img, String introduce, String process,
			Integer number, Set orders) {
		this.restaurant = restaurant;
		this.type = type;
		this.fname = fname;
		this.price = price;
		this.date = date;
		this.img = img;
		this.introduce = introduce;
		this.process = process;
		this.number = number;
		this.orders = orders;
	}

	// Property accessors

	public Integer getFid() {
		return this.fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public Restaurant getRestaurant() {
		return this.restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	public Type getType() {
		return this.type;
	}

	public void setType(Type type) {
		this.type = type;
	}

	public String getFname() {
		return this.fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Timestamp getDate() {
		return this.date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getProcess() {
		return this.process;
	}

	public void setProcess(String process) {
		this.process = process;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

}