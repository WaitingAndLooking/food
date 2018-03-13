package com.service;

import java.util.List;

import com.user.entity.User;

public interface IUserService {
	// listall
	public List<User> listall();

	// add
	public boolean add(User u);

	// preupdate
	public User selectByUid(int uid);

	// update
	public boolean update(User u);

	// delete
	public boolean delete(int uid);

	// 登录
	public User isExist(String uname, String password, int myright);

	//分页
	public List<User> selectBypage(int offset,int length);
	
	//根据uname查user
	public User selectByUname(String uname);
}
