package com.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.user.entity.Restaurant;
import com.user.entity.User;


public class ResDAOImp implements ResDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//店铺显示
	public List<Restaurant> selectByUname(String uname) {
		System.out.println("正在执行dao中selectByUname方法");
		//Restaurant res= null;
		List<Restaurant> list1=null;
		try {
			Session session=sessionFactory.openSession();
			session.clear();
			Transaction trans=session.beginTransaction();
			
			User u=null;
			System.out.println("uname="+uname);
			/*String hql="select u.uid from User as u where u.uname="+uname;
			Query query=session.createQuery(hql);
			List list = query.list();
			List<Integer> i= list;
			Integer r=i.get(0);*/
			String hql="from User as u where u.uname='"+uname+"'";
			Query query=session.createQuery(hql);
			List<User> list=query.list();
			u=list.get(0);
			System.out.println("uid="+u.getUid());
			//String hql2="from Restaurant as res where res.id="+1;
			String hql2="from Restaurant as res where res.user.uid="+u.getUid();
			//String hql2="from Restaurant as res where res.u_id='"+u.getUid()+"'";
			//Query query2=session.createQuery(hql2);
		
			list1=session.createQuery(hql2).list();
			//res=list1.get(0);
			trans.commit();
			session.close();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list1;
	}

	//添加
	public boolean add(Restaurant res) {
		System.out.println("正在执行dao中add方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.merge(res);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//删除
	public boolean delete(int rid) {
		System.out.println("正在执行dao中delete方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		System.out.println("rid = "+rid);
		String hql="delete Restaurant as res where res.rid="+rid;
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
	public List<Restaurant> listall() {
		System.out.println("正在执行dao中listall方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Restaurant> list=null;
		String hql="from Restaurant";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//分页
	public List<Restaurant> selectByPage(int offset, int length) {
		System.out.println("dao中正在执行selectBypage分页查询操作");
		List<Restaurant> list=new ArrayList<Restaurant>();
		try {
			Session session=sessionFactory.openSession();
			session.clear();
			Transaction trans=session.beginTransaction();
			String hql="from Restaurant";
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
	public Restaurant selectByRid(int rid) {
		System.out.println("正在执行dao中selectByRid方法");
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

	//修改
	public boolean update(Restaurant res) {
		System.out.println("正在执行dao中update方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		System.out.println("uname="+res.getUser().getUname());
		
		boolean flag=false;
		session.saveOrUpdate(res);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//审核
	public boolean selectByStatus(int rid) {
		System.out.println("正在执行dao中selectByStatus方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		String hql="update Restaurant as res set res.status=1 where res.rid="+rid;
		Query query=session.createQuery(hql);
		int state=query.executeUpdate();
		trans.commit();
		session.close();
		if(state>0){
			flag=true;
		}
		return flag;
	}

	//查询tname
	public List<Restaurant> selectAllOnlyName() {
		System.out.println("正在执行dao中selectAllOnlyName方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Restaurant> list=null;
		String hql="select res.rname from Restaurant as res";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//根据tname查type
	public Restaurant selectByRname(String rname) {
		System.out.println("正在执行dao中selectByRname方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		Restaurant res=null;
		List<Restaurant> list=null;
		String hql="from Restaurant as res where res.rname=?";
		Query query=session.createQuery(hql);
		query.setString(0, rname);
		list=query.list();
		if(list.size()>0){
			res=list.get(0);
		}
		return res;
	}
	
	//list Restaurant
	public List<Restaurant> listByRid(int rid) {
		System.out.println("正在执行dao中selectByRname方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Restaurant> list=null;
		String hql="from Restaurant as res where res.rid="+rid;
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

}
