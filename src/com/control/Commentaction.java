package com.control;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.page.CPageBean;
import com.service.CommentServiceImp;
import com.service.ResServiceImp;
import com.service.UserServiceImp;
import com.user.entity.Comment;
import com.user.entity.Restaurant;
import com.user.entity.User;

public class Commentaction extends ActionSupport {
	private Comment c;
	private int cid;
	private CommentServiceImp comservice;
	private int currentpage;//当前页数
	private CPageBean cpagebean;//分页类
	private Restaurant res;
	private ResServiceImp resservice;
	private UserServiceImp userservice;
	private User user;
	
	
	public Restaurant getRes() {
		return res;
	}

	public void setRes(Restaurant res) {
		this.res = res;
	}

	public ResServiceImp getResservice() {
		return resservice;
	}

	public void setResservice(ResServiceImp resservice) {
		this.resservice = resservice;
	}

	public UserServiceImp getUserservice() {
		return userservice;
	}

	public void setUserservice(UserServiceImp userservice) {
		this.userservice = userservice;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public Comment getC() {
		return c;
	}

	public void setC(Comment c) {
		this.c = c;
	}

	public CommentServiceImp getComservice() {
		return comservice;
	}

	public void setComservice(CommentServiceImp comservice) {
		this.comservice = comservice;
	}

	
	public int getCurrentpage() {
		return currentpage;
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public CPageBean getCpagebean() {
		return cpagebean;
	}

	public void setCpagebean(CPageBean cpagebean) {
		this.cpagebean = cpagebean;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	//前端 显示餐馆留言
	public String listByCid() throws Exception {
		System.out.println("正在执行action中listall方法");
		List<Comment> clist=comservice.listByRid(this.getC().getRestaurant().getRid());
		List<Restaurant> rlist=resservice.listByRid(this.getC().getRestaurant().getRid());
		
		if(clist!=null&&rlist!=null){
			
			System.out.println("有数据！");
			System.out.println("clist.size="+clist.size());
			System.out.println("rlist.size="+rlist.size());
			ActionContext.getContext().getSession().put("clist", clist);
			ActionContext.getContext().getSession().put("rlist", rlist);
			return "qdshowall";
		}else{
			System.out.println("没有数据！");
			return "add";
		}
	}

	// 显示所有
	public String listall() throws Exception {
		System.out.println("正在执行action中listall方法");
		List<Comment> list = comservice.listall();
		if (list != null) {
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("clist", list);
			return this.listByCid();
		} else {
			System.out.println("没有数据");
			return "add";
		}
	}

	// 添加
	public String add() throws Exception {
		System.out.println("正在执行action中add方法");
		//System.out.println("uname="+this.getUser().getUname());
		System.out.println("uname="+this.getC().getUser().getUname());
		System.out.println("rname="+this.getC().getRestaurant().getRname());
		User u=userservice.selectByUname(this.getC().getUser().getUname());
		this.getC().setUser(u);
		Restaurant res=resservice.selectByRname(this.getC().getRestaurant().getRname());
		this.getC().setRestaurant(res);
		boolean result = comservice.add(this.getC());
		if (result) {
			System.out.println("添加成功！");
			return this.listByCid();
		} else {
			System.out.println("添加失败！");
			return ERROR;
		}
	}

	// 删除
	public String delete() throws Exception {
		System.out.println("正在执行action中delete方法");
		System.out.println("cid="+this.getC().getCid());
		boolean result=comservice.delete(this.getC().getCid());
		if (result) {
			System.out.println("删除成功！");
			return this.selectByPage();
		} else {
			System.out.println("删除失败");
			return ERROR;
		}
	}

	// 预修改
	public String preupdate() throws Exception {
		System.out.println("正在执行action中preupdate方法");
		Comment com = comservice.selectByCid(this.getC().getCid());
		if (com != null) {
			System.out.println("有数据！");
			return "update";
		} else {
			System.out.println("没有数据！");
			return "showall";
		}
	}

	// 修改
	public String update() throws Exception {
		System.out.println("正在执行action中update方法");
		boolean result = comservice.update(this.getC());
		if (result) {
			System.out.println("修改成功！");
			return "showall";
		} else {
			System.out.println("修改失败！");
			return "update";
		}
	}

	// 分页
	public String selectByPage() throws Exception {
		System.out.println("正在执行action中selectByPage方法");
		int current=this.getCurrentpage();
		if(current<1){
			current=1;
		}
		List<Comment> list=cpagebean.queryforpage(current);
		if(list.size()>0){
			System.out.println("数据库内有数据");
			Map<String, Object> session=ActionContext.getContext().getSession();
			session.put("cpagelist", list);
			session.put("currentpage", current);
			session.put("allpage", cpagebean.getAllpage());
			session.put("allrecord", cpagebean.getAllrecord());
			return this.listall();
		}else{
			System.out.println("数据库内没有数据");
			return "add";
		}
	}
}
