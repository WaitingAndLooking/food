package com.user.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Restaurant entity. @author MyEclipse Persistence Tools
 */

public class Restaurant implements java.io.Serializable {

	// Fields

	private Integer rid;
	private User user;
	private String rname;
	private String addr;
	private String foods;
	private String comments;
	private Integer status;
	private Set orders = new HashSet(0);
	private Set comments_1 = new HashSet(0);
	private Set foods_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Restaurant() {
	}

	/** minimal constructor */
	public Restaurant(User user) {
		this.user = user;
	}

	/** full constructor */
	public Restaurant(User user, String rname, String addr, String foods,
			String comments, Integer status, Set orders, Set comments_1,
			Set foods_1) {
		this.user = user;
		this.rname = rname;
		this.addr = addr;
		this.foods = foods;
		this.comments = comments;
		this.status = status;
		this.orders = orders;
		this.comments_1 = comments_1;
		this.foods_1 = foods_1;
	}

	// Property accessors

	public Integer getRid() {
		return this.rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getRname() {
		return this.rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getAddr() {
		return this.addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getFoods() {
		return this.foods;
	}

	public void setFoods(String foods) {
		this.foods = foods;
	}

	public String getComments() {
		return this.comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

	public Set getComments_1() {
		return this.comments_1;
	}

	public void setComments_1(Set comments_1) {
		this.comments_1 = comments_1;
	}

	public Set getFoods_1() {
		return this.foods_1;
	}

	public void setFoods_1(Set foods_1) {
		this.foods_1 = foods_1;
	}

}