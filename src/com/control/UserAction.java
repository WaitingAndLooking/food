package com.control;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.page.PageBean;
import com.service.UserServiceImp;
import com.user.entity.User;

public class UserAction extends ActionSupport{
	private String mes;
	private UserServiceImp userservice;
	private User u;
	private String uname;
	private String password;
	private int myright;
	private int currentpage;//当前页数
	private PageBean pagebean;//分页类

	public int getCurrentpage() {
		return currentpage;
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public PageBean getPagebean() {
		return pagebean;
	}

	public void setPagebean(PageBean pagebean) {
		this.pagebean = pagebean;
	}

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getMyright() {
		return myright;
	}

	public void setMyright(int myright) {
		this.myright = myright;
	}

	public UserServiceImp getUserservice() {
		return userservice;
	}

	public void setUserservice(UserServiceImp userservice) {
		this.userservice = userservice;
	}

	public String getMes() {
		return mes;
	}

	public void setMes(String mes) {
		this.mes = mes;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	public String test() throws Exception {
		System.out.println("aaa");
		System.out.println("测试action");
		System.out.println("sss==="+this.mes);
		return SUCCESS;
	}
	
	//前台修改个人信息
	public String qdupdate() throws Exception {
		System.out.println("正在执行action中qdupdate方法");
		boolean result=userservice.update(this.getU());
		if(result){
			System.out.println("修改成功");
			return this.selectByUname();
		}else{
			System.out.println("修改失败");
			return ERROR;
		}
	}
	
	//根据姓名查找用户
	public String selectByUname() throws Exception {
		System.out.println("正在执行action中selectByUname方法");
		User u=userservice.selectByUname(this.getU().getUname());
		if(u!=null){
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("u", u);
			return "user";
		}else{
			System.out.println("没有数据！");
			return ERROR;
		}
	}
	
	//register
	public String register() throws Exception {
		System.out.println("正在执行action中register方法");
		boolean result=userservice.add(this.getU());
		if(result){
			System.out.println("添加成功");
			return "register";
		}else{
			System.out.println("添加失败");
			return "add";
		}
	}
	
	//login 登录
	public String login() throws Exception {
		System.out.println("正在执行action中login");
		System.out.println("uname "+this.getUname()+"  "+"password="+this.getPassword()+"   "+"myright="+this.getMyright());
		User u = userservice.isExist(this.getUname(), this
				.getPassword(), this.getMyright());
		System.out.println("myright="+this.getMyright());
		if (u != null) {
			if(u.getMyright()==1){
				System.out.println("管理员登陆成功");
				ActionContext.getContext().getSession().put("u", u);
				return SUCCESS;
			}else if(u.getMyright()==3){
				System.out.println("店主登陆成功");
				ActionContext.getContext().getSession().put("u", u);
				return "dianpu";
			}else{
				System.out.println("用户登陆成功");
				ActionContext.getContext().getSession().put("u", u);
				return "qianduan";
			}
		} else {
			System.out.println("登录失败");
			return "login";
		}
	}
	
	//分页
	public String listBypage() throws Exception {
		System.out.println("正在执行action中分页listBypage");
		int current=this.getCurrentpage();
		if(current<1){
			current=1;
		}
		if(current>pagebean.getAllpage()){
			current=pagebean.getAllpage();
		}
		List<User> list=pagebean.queryforpage(current);
		if(list.size()>0){
			System.out.println("数据库内有数据");
			Map<String, Object> session=ActionContext.getContext().getSession();
			session.put("pagelist", list);
			session.put("currentpage", current);
			session.put("allpage", pagebean.getAllpage());
			session.put("allrecord", pagebean.getAllrecord());
			return this.listall();
		}else{
			System.out.println("数据库内没有数据");
			return "add";
		}
	}
	
	//listall
	public String listall() throws Exception {
		System.out.println("正在执行action中listall方法");
		List<User> list=userservice.listall();
		if(list.size()>0){
			System.out.println("有数据");
			ActionContext.getContext().getSession().put("list", list);
			return "showall";
		}else{
			System.out.println("没有数据");
			return "add";
		}
	}
	
	//add
	public String add() throws Exception {
		System.out.println("正在执行action中add方法");
		boolean result=userservice.add(this.getU());
		if(result){
			System.out.println("添加成功");
			return this.listBypage();
		}else{
			System.out.println("添加失败");
			return "add";
		}
	}
	
	//delete
	public String delete() throws Exception {
		System.out.println("正在执行action中delete方法");
		boolean result=userservice.delete(this.getU().getUid());
		if(result){
			System.out.println("删除成功");
			return this.listBypage();
		}else{
			System.out.println("删除失败");
			return ERROR;
		}
	}
	
	//preupdate
	public String preupdate() throws Exception {
		System.out.println("正在执行action中preupdate方法");
		User u=userservice.selectByUid(this.getU().getUid());
		if(u!=null){
			System.out.println("有数据");
			ActionContext.getContext().getSession().put("preupdate",u);
			return "update";
		}else{
			System.out.println("没有数据");
			return this.listall();
		}
	}
	
	//update
	public String update() throws Exception {
		System.out.println("正在执行action中update方法");
		boolean result=userservice.update(this.getU());
		if(result){
			System.out.println("修改成功");
			return this.listBypage();
		}else{
			System.out.println("修改失败");
			return "update";
		}
	}

	
}
