package com.service;

import java.util.List;

import com.dao.CommentDAOImp;
import com.user.entity.Comment;

public class CommentServiceImp implements ICommentService {
	private CommentDAOImp comdao;

	

	public CommentDAOImp getComdao() {
		return comdao;
	}

	public void setComdao(CommentDAOImp comdao) {
		this.comdao = comdao;
	}

	//添加
	public boolean add(Comment com) {
		System.out.println("正在执行service中add方法");
		return comdao.add(com);
	}

	//删除
	public boolean delete(int cid) {
		System.out.println("正在执行service中delete方法");
		return comdao.delete(cid);
	}

	//显示所有
	public List<Comment> listall() {
		System.out.println("正在执行service中delete方法");
		return comdao.listall();
	}

	//预修改
	public Comment selectByCid(int cid) {
		System.out.println("正在执行service中selectByCid方法");
		return comdao.selectByCid(cid);
	}

	//分页
	public List<Comment> selectByPage(int offset, int length) {
		System.out.println("正在执行service中selectByPage方法");
		return comdao.selectByPage(offset, length);
	}

	//修改
	public boolean update(Comment com) {
		System.out.println("正在执行service中update方法");
		return comdao.update(com);
	}

	//根据cid查询所有comment
	public List<Comment> listByRid(int rid) {
		System.out.println("正在执行service中listByRid方法");
		return comdao.listByRid(rid);
	}
	

}
