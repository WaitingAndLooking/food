package com.user.entity;

import java.sql.Timestamp;

/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer oid;
	private Restaurant restaurant;
	private Food food;
	private User user;
	private String FName;
	private Integer count;
	private Integer allprice;
	private Integer status;
	private Timestamp time;

	// Constructors

	/** default constructor */
	public Order() {
	}

	/** minimal constructor */
	public Order(Restaurant restaurant, Food food, User user, Timestamp time) {
		this.restaurant = restaurant;
		this.food = food;
		this.user = user;
		this.time = time;
	}

	/** full constructor */
	public Order(Restaurant restaurant, Food food, User user, String FName,
			Integer count, Integer allprice, Integer status, Timestamp time) {
		this.restaurant = restaurant;
		this.food = food;
		this.user = user;
		this.FName = FName;
		this.count = count;
		this.allprice = allprice;
		this.status = status;
		this.time = time;
	}

	// Property accessors

	public Integer getOid() {
		return this.oid;
	}

	public void setOid(Integer oid) {
		this.oid = oid;
	}

	public Restaurant getRestaurant() {
		return this.restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	public Food getFood() {
		return this.food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getFName() {
		return this.FName;
	}

	public void setFName(String FName) {
		this.FName = FName;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Integer getAllprice() {
		return this.allprice;
	}

	public void setAllprice(Integer allprice) {
		this.allprice = allprice;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

}