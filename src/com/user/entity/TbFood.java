package com.user.entity;

import java.sql.Timestamp;

/**
 * TbFood entity. @author MyEclipse Persistence Tools
 */

public class TbFood implements java.io.Serializable {

	// Fields

	private Integer fid;
	private Restaurant restaurant;
	private TbType tbType;
	private String fname;
	private Integer price;
	private Timestamp date;
	private String img;
	private String introduce;
	private String process;

	// Constructors

	/** default constructor */
	public TbFood() {
	}

	/** minimal constructor */
	public TbFood(Restaurant restaurant, TbType tbType, String fname,
			Integer price, Timestamp date, String img, String introduce) {
		this.restaurant = restaurant;
		this.tbType = tbType;
		this.fname = fname;
		this.price = price;
		this.date = date;
		this.img = img;
		this.introduce = introduce;
	}

	/** full constructor */
	public TbFood(Restaurant restaurant, TbType tbType, String fname,
			Integer price, Timestamp date, String img, String introduce,
			String process) {
		this.restaurant = restaurant;
		this.tbType = tbType;
		this.fname = fname;
		this.price = price;
		this.date = date;
		this.img = img;
		this.introduce = introduce;
		this.process = process;
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

	public TbType getTbType() {
		return this.tbType;
	}

	public void setTbType(TbType tbType) {
		this.tbType = tbType;
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

}