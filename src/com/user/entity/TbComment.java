package com.user.entity;

import java.sql.Timestamp;

/**
 * TbComment entity. @author MyEclipse Persistence Tools
 */

public class TbComment implements java.io.Serializable {

	// Fields

	private Integer cid;
	private Restaurant restaurant;
	private User user;
	private String content;
	private Timestamp date;

	// Constructors

	/** default constructor */
	public TbComment() {
	}

	/** full constructor */
	public TbComment(Restaurant restaurant, User user, String content,
			Timestamp date) {
		this.restaurant = restaurant;
		this.user = user;
		this.content = content;
		this.date = date;
	}

	// Property accessors

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Restaurant getRestaurant() {
		return this.restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getDate() {
		return this.date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

}