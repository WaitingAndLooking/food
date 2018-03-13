package com.user.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * TbRestaurant entity. @author MyEclipse Persistence Tools
 */

public class TbRestaurant implements java.io.Serializable {

	// Fields

	private Integer rid;
	private User user;
	private String rname;
	private String addr;
	private String foods;
	private String comments;
	private Integer status;
	private Set tbComments = new HashSet(0);
	private Set tbFoods = new HashSet(0);

	// Constructors

	/** default constructor */
	public TbRestaurant() {
	}

	/** minimal constructor */
	public TbRestaurant(User user, String rname, String addr, Integer status) {
		this.user = user;
		this.rname = rname;
		this.addr = addr;
		this.status = status;
	}

	/** full constructor */
	public TbRestaurant(User user, String rname, String addr, String foods,
			String comments, Integer status, Set tbComments, Set tbFoods) {
		this.user = user;
		this.rname = rname;
		this.addr = addr;
		this.foods = foods;
		this.comments = comments;
		this.status = status;
		this.tbComments = tbComments;
		this.tbFoods = tbFoods;
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

	public Set getTbComments() {
		return this.tbComments;
	}

	public void setTbComments(Set tbComments) {
		this.tbComments = tbComments;
	}

	public Set getTbFoods() {
		return this.tbFoods;
	}

	public void setTbFoods(Set tbFoods) {
		this.tbFoods = tbFoods;
	}

}