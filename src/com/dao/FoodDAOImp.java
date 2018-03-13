package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.user.entity.Food;
import com.user.entity.Restaurant;

public class FoodDAOImp implements FoodDAO {
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//店铺显示所有
	public List<Food> selectByRid(int rid) {
		System.out.println("正在执行dao中selectByRid方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Food> list=null;
		String hql="from Food as f where f.restaurant.rid="+rid;
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}


	//添加
	public boolean add(Food food) {
		System.out.println("正在执行dao中add方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.save(food);
		trans.commit();
		flag=true;
		return flag;
	}

	//删除
	public boolean delete(int fid) {
		System.out.println("正在执行dao中delete方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		String hql="delete Food as f where f.fid="+fid;
		Query query=session.createQuery(hql);
		int state=query.executeUpdate();
		trans.commit();
		session.close();
		if(state>0){
			flag=true;
		}
		return flag;
	}

	//显示所有
	public List<Food> listall() {
		System.out.println("正在执行dao中listall方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Food> list=null;
		String hql="from Food";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//预修改
	public Food selectByFid(int fid) {
		System.out.println("正在执行dao中selectByFid方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		Food f=null;
		String hql="from Food as f where f.fid="+fid;
		Query query=session.createQuery(hql);
		List<Food> list=query.list();
		f=list.get(0);
		trans.commit();
		session.close();
		return f;
	}

	//修改
	public boolean update(Food food) {
		System.out.println("正在执行dao中update方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.merge(food);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//分页
	public List<Food> selectByPage(int offset, int length) {
		System.out.println("正在执行dao中selectByPage方法");
		List<Food> list=new ArrayList<Food>();
		try {
			Session session=sessionFactory.openSession();
			session.clear();
			Transaction trans=session.beginTransaction();
			String hql="from Food";
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

	//店铺 预添加
	public Restaurant preupload(int rid) {
		System.out.println("正在执行dao中preupload方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		Restaurant res=null;
		String hql="from Restaurant as res where res.rid="+rid;
		Query query=session.createQuery(hql);
		List<Restaurant> list=query.list();
		res=list.get(0);
		trans.commit();
		session.close();
		return res;
	}

	//查询fname
	public List<Food> selectAllOnlyName() {
		System.out.println("正在执行dao中selectAllOnlyName方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Food> list=null;
		String hql="select f.fname from Food as f";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//根据fname查food
	public Food selectByFname(String fname) {
		System.out.println("正在执行dao中selectByFname方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		Food f=null;
		List<Food> list=null;
		String hql="from Food as f where f.fname=?";
		Query query=session.createQuery(hql);
		query.setString(0, fname);
		list=query.list();
		if(list.size()>0){
			f=list.get(0);
		}
		trans.commit();
		session.close();
		return f;
	}

	
	
}
