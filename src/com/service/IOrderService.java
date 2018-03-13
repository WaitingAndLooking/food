package com.service;

import java.util.List;

import com.user.entity.Order;

public interface IOrderService {
	//显示所有
	public List<Order> listall();
	
	//添加
	public boolean add(Order order);
	
	//删除
	public boolean delete(int oid);
	
	//预修改
	public Order selectByOid(int oid);
	
	//修改
	public boolean update(Order order);
	
	//分页
	public List<Order> listByPage(int offset,int length);
	
	//店铺显示所有
	public List<Order> selectByRid(int rid);
	
	//根据uname查询order
	public List<Order> selectByUname(String uname);
	
	//审核
	public boolean selectByStatus(int oid);

}
