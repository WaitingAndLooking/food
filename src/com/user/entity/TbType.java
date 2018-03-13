package com.user.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * TbType entity. @author MyEclipse Persistence Tools
 */

public class TbType implements java.io.Serializable {

	// Fields

	private Integer tid;
	private String tname;
	private Set foods = new HashSet(0);

	// Constructors

	/** default constructor */
	public TbType() {
	}

	/** minimal constructor */
	public TbType(String tname) {
		this.tname = tname;
	}

	/** full constructor */
	public TbType(String tname, Set foods) {
		this.tname = tname;
		this.foods = foods;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public Set getFoods() {
		return this.foods;
	}

	public void setFoods(Set foods) {
		this.foods = foods;
	}

}