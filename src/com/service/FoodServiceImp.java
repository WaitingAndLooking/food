package com.service;

import java.util.List;

import com.dao.FoodDAOImp;
import com.user.entity.Food;
import com.user.entity.Restaurant;

public class FoodServiceImp implements IFoodService {
	private FoodDAOImp fooddao;
	
	public FoodDAOImp getFooddao() {
		return fooddao;
	}
	
	public void setFooddao(FoodDAOImp fooddao) {
		this.fooddao = fooddao;
	}

	//添加
	public boolean add(Food food) {
		System.out.println("正在执行service中add方法");
		return fooddao.add(food);
	}

	//删除
	public boolean delete(int fid) {
		System.out.println("正在执行service中delete方法");
		return fooddao.delete(fid);
	}

	//显示所有
	public List<Food> listall() {
		System.out.println("正在执行service中listall方法");
		return fooddao.listall();
	}

	//预修改
	public Food selectByFid(int fid) {
		System.out.println("正在执行service中selectByFid方法");
		return fooddao.selectByFid(fid);
	}

	//分页
	public List<Food> selectByPage(int offset, int length) {
		System.out.println("正在执行service中selectByPage方法");
		return fooddao.selectByPage(offset, length);
	}

	//修改
	public boolean update(Food food) {
		System.out.println("正在执行service中update方法");
		return fooddao.update(food);
	}

	//店铺显示所有
	public List<Food> selectByRid(int rid) {
		System.out.println("正在执行service中selectByRid方法");
		return fooddao.selectByRid(rid);
	}
	
	//店铺 预添加
	public Restaurant preupload(int rid) {
		System.out.println("正在执行service中preupload方法");
		return fooddao.preupload(rid);
	}

	//查询fname
	public List<Food> selectAllOnlyName() {
		System.out.println("正在执行service中selectAllOnlyName方法");
		return fooddao.selectAllOnlyName();
	}

	//根据fname查food
	public Food selectByFname(String fname) {
		System.out.println("正在执行service中selectByFname方法");
		return fooddao.selectByFname(fname);
	}

}
