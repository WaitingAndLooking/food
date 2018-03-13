package com.service;

import java.util.List;

import com.dao.UserDAOImp;
import com.user.entity.User;

public class UserServiceImp implements IUserService {
	private UserDAOImp userdao;

	public UserDAOImp getUserdao() {
		return userdao;
	}

	public void setUserdao(UserDAOImp userdao) {
		this.userdao = userdao;
	}

	//add方法
	public boolean add(User u) {
		System.out.println("正在执行service中add");
		return userdao.add(u);
	}

	//delete方法
	public boolean delete(int uid) {
		System.out.println("正在执行service中delete");
		return userdao.delete(uid);
	}

	//isExist方法
	public User isExist(String uname, String password, int myright) {
		System.out.println("正在执行service中isExist");
		return userdao.isExist(uname, password, myright);
	}

	//listall方法
	public List<User> listall() {
		System.out.println("正在执行service中listall");
		return userdao.listall();
	}

	//selectByEid方法
	public User selectByUid(int uid) {
		System.out.println("正在执行service中selectByEid");
		return userdao.selectByUid(uid);
	}

	//update方法
	public boolean update(User u) {
		System.out.println("正在执行service中update");
		return userdao.update(u);
	}

	//分页
	public List<User> selectBypage(int offset, int length) {
		System.out.println("正在执行service中selectBypage");
		return userdao.selectBypage(offset, length);
	}

	//根据uname查询user
	public User selectByUname(String uname) {
		System.out.println("正在执行service中selectByUname");
		return userdao.selectByUname(uname);
	}

}
