package com.service;

import java.util.List;

import com.dao.OrderDAOImp;
import com.user.entity.Order;

public class OrderServiceImp implements IOrderService {
	private OrderDAOImp orderdao;

	public OrderDAOImp getOrderdao() {
		return orderdao;
	}

	public void setOrderdao(OrderDAOImp orderdao) {
		this.orderdao = orderdao;
	}

	//添加
	public boolean add(Order order) {
		System.out.println("正在执行service中add");
		return orderdao.add(order);
	}

	//删除
	public boolean delete(int oid) {
		System.out.println("正在执行service中delete");
		return orderdao.delete(oid);
	}

	//分页
	public List<Order> listByPage(int offset, int length) {
		System.out.println("正在执行service中listByPage");
		return orderdao.listByPage(offset, length);
	}

	public List<Order> listall() {
		System.out.println("正在执行service中listall");
		return orderdao.listall();
	}

	//预修改
	public Order selectByOid(int oid) {
		System.out.println("正在执行service中selectByOid");
		return orderdao.selectByOid(oid);
	}

	//修改
	public boolean update(Order order) {
		System.out.println("正在执行service中update");
		return orderdao.update(order);
	}

	//店铺 显示所有
	public List<Order> selectByRid(int rid) {
		System.out.println("正在执行service中selectByRid");
		return orderdao.selectByRid(rid);
	}

	//根据uname查询order
	public List<Order> selectByUname(String uname) {
		System.out.println("正在执行service中selectByUname");
		return orderdao.selectByUname(uname);
	}

	//审核
	public boolean selectByStatus(int oid) {
		System.out.println("正在执行service中selectByUname");
		return orderdao.selectByStatus(oid);
	}

}
