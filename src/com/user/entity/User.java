package com.user.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer uid;
	private String uname;
	private String sex;
	private String password;
	private String phone;
	private String email;
	private Integer myright;
	private Set restaurants = new HashSet(0);
	private Set orders = new HashSet(0);
	private Set comments = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String uname, String sex, String password, String phone,
			String email, Integer myright, Set restaurants, Set orders,
			Set comments) {
		this.uname = uname;
		this.sex = sex;
		this.password = password;
		this.phone = phone;
		this.email = email;
		this.myright = myright;
		this.restaurants = restaurants;
		this.orders = orders;
		this.comments = comments;
	}

	// Property accessors

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getMyright() {
		return this.myright;
	}

	public void setMyright(Integer myright) {
		this.myright = myright;
	}

	public Set getRestaurants() {
		return this.restaurants;
	}

	public void setRestaurants(Set restaurants) {
		this.restaurants = restaurants;
	}

	public Set getOrders() {
		return this.orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}

	public Set getComments() {
		return this.comments;
	}

	public void setComments(Set comments) {
		this.comments = comments;
	}

}