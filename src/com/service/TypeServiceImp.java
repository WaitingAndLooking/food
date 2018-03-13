package com.service;

import java.util.List;

import com.dao.TypeDAOImp;
import com.user.entity.Type;

public class TypeServiceImp implements ITypeService{
	private TypeDAOImp typedao;

	//添加
	public TypeDAOImp getTypedao() {
		return typedao;
	}

	public void setTypedao(TypeDAOImp typedao) {
		this.typedao = typedao;
	}

	public boolean add(Type t) {
		System.out.println("整个在执行service中add方法");
		return typedao.add(t);
	}

	//删除
	public boolean delete(int tid) {
		System.out.println("整个在执行service中delete方法");
		return typedao.delete(tid);
	}

	//显示所有
	public List<Type> listall() {
		System.out.println("整个在执行service中listall方法");
		return typedao.listall();
	}

	//分页
	public List<Type> selectByPage(int offset, int length) {
		System.out.println("整个在执行service中selectByPage方法");
		return typedao.selectByPage(offset, length);
	}

	//预修改
	public Type selectByTid(int tid) {
		System.out.println("整个在执行service中selectByTid方法");
		return typedao.selectByTid(tid);
	}

	//修改
	public boolean update(Type t) {
		System.out.println("整个在执行service中update方法");
		return typedao.update(t);
	}

	//查询tname
	public List<Type> selectAllOnlyName() {
		System.out.println("整个在执行service中selectAllOnlyName方法");
		return typedao.selectAllOnlyName();
	}

	//根据tname查type
	public Type selectByTname(String tname) {
		System.out.println("整个在执行service中selectByTname方法");
		return typedao.selectByTname(tname);
	}

}
