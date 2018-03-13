package com.dao;

import java.util.List;

import com.user.entity.Restaurant;


public interface ResDAO {

	public List<Restaurant> listall(); //显示所有
	
	public boolean delete(int rid); //删除
	
	public boolean add(Restaurant res); //添加
	
	public Restaurant selectByRid(int rid); //预修改
	
	public boolean update(Restaurant res); //修改
	
	public List<Restaurant> selectByPage(int offset,int length);// 分页
	
	public boolean selectByStatus(int rid);//审核
	
	public List<Restaurant> selectByUname(String uname);//店铺显示
	
	//查询tname
	public List<Restaurant> selectAllOnlyName();
	
	//根据tname查type
	public Restaurant selectByRname(String rname);
	
	//list Restaurant
	public List<Restaurant> listByRid(int rid);

}
