package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.user.entity.User;

public class UserDAOImp implements UserDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//add方法
	public boolean add(User u) {
		System.out.println("正在执行dao中add");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.merge(u);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//delete方法
	public boolean delete(int uid) {
		System.out.println("正在执行dao中delete");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		String hql="delete User as u where u.uid="+uid;
		Query query=session.createQuery(hql);
		int state=query.executeUpdate();
		trans.commit();
		session.close();
		if(state>0){
			flag=true;
		}
		return flag;
	}

	//isExist方法
	public User isExist(String uname, String password, int myright) {
		System.out.println("正在执行dao中isExist");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		User u=null;
		String hql="from User as u where u.uname=? and u.password=? and u.myright=?";
		Query query=session.createQuery(hql);
		query.setString(0, uname);
		query.setInteger(2, myright);
		query.setString(1, password);
		List<User> list=query.list();
		if(list.size()>0&&list!=null){
			u=list.get(0);
			return list.get(0);
		}
		trans.commit();
		session.close();
		return u;
	}

	//listall方法
	public List<User> listall() {
		System.out.println("正在执行dao中listall");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<User> list=null;
		String hql="from User";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//selectByUid方法
	public User selectByUid(int uid) {
		System.out.println("正在执行dao中selectByEid");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		User u=null;
		String hql="from User as u where u.uid="+uid;
		Query query=session.createQuery(hql);
		List<User> list=query.list();
		u=list.get(0);
		trans.commit();
		session.close();
		return u;
	}

	//update方法
	public boolean update(User u) {
		System.out.println("正在执行dao中selectByEid");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.merge(u);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//分页
	public List<User> selectBypage(int offset, int length) {
		System.out.println("dao中正在执行selectBypage分页查询操作");
		List<User> list=new ArrayList<User>();
		try {
			Session session=sessionFactory.openSession();
			session.clear();
			Transaction trans=session.beginTransaction();
			String hql="from User";
			Query query=session.createQuery(hql);
			query.setFirstResult(offset);
			query.setMaxResults(length);
			list=query.list();
			trans.commit();
			session.close();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	//根据uname查询user
	public User selectByUname(String uname) {
		System.out.println("正在执行dao中selectByUname");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		User u=null;
		List<User> list=null;
		String hql="from User as u where u.uname=?";
		Query query=session.createQuery(hql);
		query.setString(0, uname);
		list=query.list();
		if(list.size()>0){
			u=list.get(0);
		}
		return u;
	}
	
	
}
