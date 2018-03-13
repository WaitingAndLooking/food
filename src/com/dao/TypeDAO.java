package com.dao;

import java.util.List;

import com.user.entity.Type;

public interface TypeDAO {
	//显示所有
	public List<Type> listall();
	
	//删除
	public boolean delete(int tid);
	
	//添加
	public boolean add(Type t);
	
	//预修改
	public Type selectByTid(int tid);
	
	//修改
	public boolean update(Type t);
	
	//分页
	public List<Type> selectByPage(int offset,int length);
	
	//查询tname
	public List<Type> selectAllOnlyName();
	
	//根据tname查type
	public Type selectByTname(String tname);
	
	

}
