package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.user.entity.Comment;
import com.user.entity.Food;

public class CommentDAOImp implements CommentDAO {
	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//分页
	public List<Comment> selectByPage(int offset, int length) {
		System.out.println("dao中正在执行selectByPage分页查询操作");
		List<Comment> list=new ArrayList<Comment>();
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		String hql="from Comment";
		Query query=session.createQuery(hql);
		query.setFirstResult(offset);
		query.setMaxResults(length);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}


	//添加
	public boolean add(Comment com) {
		System.out.println("正在执行dao中add方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.save(com);
		trans.commit();
		flag=true;
		return flag;
	}

	//删除
	public boolean delete(int cid) {
		System.out.println("正在执行dao中delete方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		System.out.println("cid="+cid);
		String hql="delete Comment as com where com.cid="+cid;
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
	public List<Comment> listall() {
		System.out.println("正在执行dao中listall方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Comment> list=null;
		String hql="from Comment";
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

	//预修改
	public Comment selectByCid(int cid) {
		System.out.println("正在执行dao中selectByFid方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		Comment com=null;
		String hql="from Comment as com where com.cid="+cid;
		Query query=session.createQuery(hql);
		List<Comment> list=query.list();
		com=list.get(0);
		trans.commit();
		session.close();
		return com;
	}

	
	//修改
	public boolean update(Comment com) {
		System.out.println("正在执行dao中update方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		boolean flag=false;
		session.save(com);
		trans.commit();
		session.close();
		flag=true;
		return flag;
	}

	//根据rid查询所有comment
	public List<Comment> listByRid(int rid) {
		System.out.println("正在执行dao中listByRid方法");
		Session session=sessionFactory.openSession();
		session.clear();
		Transaction trans=session.beginTransaction();
		
		List<Comment> list=null;
		String hql="from Comment as c where c.restaurant.rid="+rid;
		Query query=session.createQuery(hql);
		list=query.list();
		trans.commit();
		session.close();
		return list;
	}

}
