package com.service;

import java.util.List;

import com.user.entity.Comment;

public interface ICommentService {
	//显示所有
	public List<Comment> listall();
	
	//添加
	public boolean add(Comment com);
	
	//删除
	public boolean delete(int cid);
	
	//预修改
	public Comment selectByCid(int cid);
	
	//修改
	public boolean update(Comment com);
	
	//分页
	public List<Comment> selectByPage(int offset,int length);
	
	//根据rid查找comment
	public List<Comment> listByRid(int rid);

}
