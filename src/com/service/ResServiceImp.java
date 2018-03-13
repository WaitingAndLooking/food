package com.service;

import java.util.List;

import com.dao.ResDAOImp;
import com.user.entity.Restaurant;

public class ResServiceImp implements IResService {
	private ResDAOImp resdao;

	public ResDAOImp getResdao() {
		return resdao;
	}

	public void setResdao(ResDAOImp resdao) {
		this.resdao = resdao;
	}
	
	//店铺显示
	public List<Restaurant> selectByUname(String uname) {
		System.out.println("正在执行service中selectByUname方法");
		return resdao.selectByUname(uname);
	}

	//添加
	public boolean add(Restaurant res) {
		System.out.println("正在执行service中add方法");
		return resdao.add(res);
	}

	//删除
	public boolean delete(int rid) {
		System.out.println("正在执行service中delete方法");
		return resdao.delete(rid);
	}

	//显示所有
	public List<Restaurant> listall() {
		System.out.println("正在执行service中listall方法");
		return resdao.listall();
	}

	//分页
	public List<Restaurant> selectByPage(int offset, int length) {
		System.out.println("正在执行service中selectByPage方法");
		return resdao.selectByPage(offset, length);
	}

	//预修改
	public Restaurant selectByRid(int rid) {
		System.out.println("正在执行service中selectByRid方法");
		return resdao.selectByRid(rid);
	}

	//修改
	public boolean update(Restaurant res) {
		System.out.println("正在执行service中update方法");
		return resdao.update(res);
	}

	//审核
	public boolean selectByStatus(int rid) {
		System.out.println("正在执行service中selectByStatus方法");
		return resdao.selectByStatus(rid);
	}

	//查询rname
	public List<Restaurant> selectAllOnlyName() {
		System.out.println("正在执行service中selectAllOnlyName方法");
		return resdao.selectAllOnlyName();
	}

	//通过rname查询res
	public Restaurant selectByRname(String rname) {
		System.out.println("正在执行service中selectByRname方法");
		return resdao.selectByRname(rname);
	}

	//list Restaurant
	public List<Restaurant> listByRid(int rid) {
		System.out.println("正在执行service中selectByRname方法");
		return resdao.listByRid(rid);
	}


}
