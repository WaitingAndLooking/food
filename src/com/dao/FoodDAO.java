package com.dao;

import java.util.List;

import com.user.entity.Food;
import com.user.entity.Restaurant;
import com.user.entity.Type;

public interface FoodDAO {

	//显示所有
	public List<Food> listall();
	
	//添加
	public boolean add(Food food);
	
	//删除
	public boolean delete(int fid);
	
	//预修改
	public Food selectByFid(int fid);
	
	//修改
	public boolean update(Food food);
	
	//分页
	public List<Food> selectByPage(int offset,int length);
	
	//店铺显示所有
	public List<Food> selectByRid(int rid);
	
	//店铺 预添加
	public Restaurant preupload(int rid);
	
	//查询fname
	public List<Food> selectAllOnlyName();
	
	//根据fname查food
	public Food selectByFname(String fname);
}
