package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.user.entity.Order;
import com.user.entity.User;

public class OrderDAOImp implements OrderDAO {
	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//添加
	public boolean add(Order order) {
		System.out.println("正在执行dao中add方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.save(order);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//删除
	public boolean delete(int oid) {
		System.out.println("正在执行dao中delete方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		String hql="delete Order as o where o.oid="+oid;
		Query query=session.createQuery(hql);
		int state=query.executeUpdate();
		trans.commit();
		session.close();
		if(state>0){
			flag=true;
		}
		return flag;
	}

	//分页
	public List<Order> listByPage(int offset, int length) {
		System.out.println("正在执行dao中selectByPage方法");
		List<Order> list=new ArrayList<Order>();
		try {
			Session session=sessionFactory.openSession();
			session.clear();
			Transaction trans=session.beginTransaction();
			String hql="from Order";
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

	//显示所有
	public List<Order> listall() {
		System.out.println("正在执行dao中listall方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Order> list=null;
		String hql="from Order";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//预修改
	public Order selectByOid(int oid) {
		System.out.println("正在执行dao中selectByFid方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		Order o=null;
		String hql="from Order as o where o.oid="+oid;
		Query query=session.createQuery(hql);
		List<Order> list=query.list();
		o=list.get(0);
		trans.commit();
		session.close();
		return o;
	}

	//修改
	public boolean update(Order order) {
		System.out.println("正在执行dao中update方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.merge(order);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//店铺 显示所有
	public List<Order> selectByRid(int rid) {
		System.out.println("正在执行dao中selectByRid方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Order> list=null;
		String hql="from Order as o where o.restaurant.rid="+rid;
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//根据uname查询order
	public List<Order> selectByUname(String uname) {
		System.out.println("正在执行dao中selectByUname方法");
		//List<Order> list1=null;
		
			Session session=sessionFactory.openSession();
			session.clear();
			Transaction trans=session.beginTransaction();
			
			User u=null;
			
			System.out.println("uname="+uname);
			String hql="from User as u where u.uname='"+uname+"'";
			Query query=session.createQuery(hql);
			List<User> list=query.list();
			u=list.get(0);
			System.out.println("uid="+u.getUid());
			String hql2="from Order as o where o.user.uid="+u.getUid();
			Query query2=session.createQuery(hql2);
			List<Order> list1=query2.list();
			//List<Order> list1=session.createQuery(hql2).list();
		
			System.out.println("list1.size="+list1.size());
			trans.commit();
			session.close();
		    return list1;
	}

	//审核
	public boolean selectByStatus(int oid) {
		System.out.println("正在执行dao中selectByStatus方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		String hql="update Order as o set o.status=1 where o.oid="+oid;
		Query query=session.createQuery(hql);
		int state=query.executeUpdate();
		trans.commit();
		session.close();
		if(state>0){
			flag=true;
		}
		return flag;
	}
	
	
	

}
