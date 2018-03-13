package com.control;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.page.RPageBean;
import com.service.ResServiceImp;
import com.service.UserServiceImp;
import com.user.entity.Restaurant;
import com.user.entity.User;

public class Resaction extends ActionSupport{
	private Restaurant res;
	private ResServiceImp resservice;
	private int rid;
	private int currentpage;//当前页数
	private RPageBean rpagebean;//分页类
	private UserServiceImp userservice;
	private User user;
	private String uname;
	

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	//userservice
	public UserServiceImp getUserservice() {
		return userservice;
	}
	public void setUserservice(UserServiceImp userservice) {
		this.userservice = userservice;
	}
	
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	public RPageBean getRpagebean() {
		return rpagebean;
	}
	public void setRpagebean(RPageBean rpagebean) {
		this.rpagebean = rpagebean;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
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
	
	
	@Override
	public String execute() throws Exception {
		
		return super.execute();
	}
	
	
	//店铺删除
	public String dzdelete() throws Exception {
		System.out.println("正在执行action中dzdelete方法");
		System.out.println("rid="+this.getRes().getRid());
		boolean result=resservice.delete(this.getRes().getRid());
		if(result){
			System.out.println("删除成功！");
			return this.selectByUname();
		}else{
			System.out.println("删除失败！");
			return ERROR;
		}
	}
	
	//店主 添加
	public String dzadd() throws Exception {
		System.out.println("正在执行action中dzadd方法");
		boolean result=resservice.add(this.getRes());
		if(result){
			System.out.println("添加成功！");
			return this.selectByUname();
		}else{
			System.out.println("添加失败！");
			return "add";
		}
	}
	
	//店主  预修改
	public String dzpreupdate() throws Exception {
		System.out.println("正在执行action中dzpreupdate方法");
		
		Restaurant res=resservice.selectByRid(this.getRes().getRid());
		System.out.println("foods="+this.getRes().getRid());
		if(res!=null){
			System.out.println("有数据");
			ActionContext.getContext().getSession().put("res", res);
			return "dzupdate";
		}else{
			System.out.println("没有数据");
			return this.selectByUname();
		}
	}
	
	//店主 修改
	public String dzupdate() throws Exception {
		System.out.println("正在执行action中dzupdate方法");
		System.out.println("foods="+this.getRes().getFoods());
		
		//this.getRes().setUser();
		System.out.println("uid="+this.getRes().getUser().getUid());
		boolean result=resservice.update(this.getRes());
		//boolean result=true;
		if(result){
			System.out.println("修改成功！");
			return this.selectByUname();
		}else{
			System.out.println("修改失败！");
			return "dzupdate";
		}
	}
	
	//店铺显示
	public String selectByUname() throws Exception {
		System.out.println("正在执行action中selectByUname方法");
		System.out.println("uname="+this.getUser().getUname());
		//String str="王礼明";
		List<Restaurant> list=resservice.selectByUname(this.getUser().getUname());
		if(list.size()>0){
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("showres", list);
			return "showres";
		}else{
			System.out.println("没有数据！");
			return "add";
		}
	}
	
	
	//审核
	public String shenhe() throws Exception {
		System.out.println("正在执行action中shenhe方法");
		boolean result=resservice.selectByStatus(this.getRes().getRid());
		if(result){
			System.out.println("审核通过！");
			return this.selectByPage();
		}else{
			System.out.println("审核失败！");
			return ERROR;
		}
	}
	
	//显示所有
	public String listall() throws Exception {
		System.out.println("正在执行action中listall方法");
		List<Restaurant> list=resservice.listall();
		if(list.size()>0){
			System.out.println("有数据");
			ActionContext.getContext().getSession().put("reslist", list);
			return "showall";
		}else{
			System.out.println("没有数据");
			return "add";
		}
	}
	
	//删除
	public String delete() throws Exception {
		System.out.println("正在执行action中delete方法");
		System.out.println("rid="+this.getRes().getRid());
		boolean result=resservice.delete(this.getRes().getRid());
		if(result){
			System.out.println("删除成功！");
			return this.selectByPage();
		}else{
			System.out.println("删除失败！");
			return ERROR;
		}
	}
	
	//添加
	public String add() throws Exception {
		System.out.println("正在执行action中add方法");
		User u=userservice.selectByUname(this.getRes().getUser().getUname());
		this.getRes().setUser(u);//完成了 多方数据捆绑到一方
		System.out.println("uid="+u.getUid());
		boolean result=resservice.add(this.getRes());
		if(result){
			System.out.println("添加成功！");
			return this.selectByPage();
		}else{
			System.out.println("添加失败！");
			return "add";
		}
	}
	
	//预修改
	public String preupdate() throws Exception {
		System.out.println("正在执行action中selectByRid方法");
		
		Restaurant res=resservice.selectByRid(this.getRes().getRid());
		System.out.println("foods="+this.getRes().getFoods());
		if(res!=null){
			System.out.println("有数据");
			ActionContext.getContext().getSession().put("res", res);
			return "update";
		}else{
			System.out.println("没有数据");
			return this.listall();
		}
	}
	
	//修改
	public String update() throws Exception {
		System.out.println("正在执行action中update方法");
		System.out.println("uname="+this.getRes().getFoods());
		
		//this.getRes().setUser();
		System.out.println("uid="+this.getRes().getUser().getUid());
		boolean result=resservice.update(this.getRes());
		//boolean result=true;
		if(result){
			System.out.println("修改成功！");
			return this.selectByPage();
		}else{
			System.out.println("修改失败！");
			return "update";
		}
	}
	
	//分页
	public String selectByPage() throws Exception {
		System.out.println("正在执行action中selectByPage方法");
		int current=this.getCurrentpage();
		if(current<1){
			current=1;
		}
		if(current>rpagebean.getAllpage()){
			current=rpagebean.getAllpage();
		}
		List<Restaurant> list=rpagebean.queryforpage(current);
		if(list.size()>0){
			System.out.println("数据库内有数据");
			Map<String, Object> session=ActionContext.getContext().getSession();
			session.put("rpagelist", list);
			session.put("currentpage", current);
			session.put("allpage", rpagebean.getAllpage());
			session.put("allrecord", rpagebean.getAllrecord());
			return this.listall();
		}else{
			System.out.println("数据库内没有数据");
			return "add";
		}
	}
	
}
