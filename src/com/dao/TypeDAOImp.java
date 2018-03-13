package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.user.entity.Food;
import com.user.entity.Type;

public class TypeDAOImp implements TypeDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	//添加
	public boolean add(Type t) {
		System.out.println("正在执行dao中add");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.merge(t);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//删除
	public boolean delete(int tid) {
		System.out.println("正在执行dao中delete");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=true;
		String hql="delete Type t where t.tid="+tid;
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
	public List<Type> listall() {
		System.out.println("正在执行dao中listall");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Type> list=null;
		String hql="from Type";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//分页
	public List<Type> selectByPage(int offset, int length) {
		System.out.println("正在执行dao中selectByPage方法");
		List<Type> list=new ArrayList<Type>();
		try {
			Session session=sessionFactory.openSession();
			session.clear();
			Transaction trans=session.beginTransaction();
			String hql="from Type";
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

	//预修改
	public Type selectByTid(int tid) {
		System.out.println("正在执行dao中selectByTid");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		Type t=null;
		String hql="from Type t where t.tid="+tid;
		Query query=session.createQuery(hql);
		List<Type> list=query.list();
		t=list.get(0);
		trans.commit();
		session.close();
		return t;
	}

	//修改
	public boolean update(Type t) {
		System.out.println("正在执行dao中update");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.merge(t);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//查询tname
	public List<Type> selectAllOnlyName() {
		System.out.println("正在执行dao中selectAllOnlyName");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Type> list=null;
		String hql="select t.tname from Type as t";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//根据tname查type
	public Type selectByTname(String tname) {
		System.out.println("正在执行dao中selectByTname");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		Type t=null;
		List<Type> list=null;
		String hql="from Type as t where t.tname=?";
		Query query=session.createQuery(hql);
		query.setString(0, tname);
		list=query.list();
		if(list.size()>0){
			t=list.get(0);
		}
		return t;
	}

}
