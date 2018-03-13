package com.control;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.cart.Cart;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.page.OPageBean;
import com.service.OrderServiceImp;
import com.service.UserServiceImp;
import com.user.entity.Food;
import com.user.entity.Order;
import com.user.entity.Restaurant;
import com.user.entity.User;

public class Orderaction extends ActionSupport{
	private OrderServiceImp orderservice;
	private UserServiceImp userservice;
	private Order o;
	private int oid;
	private int currentpage;//当前页数
	private OPageBean opagebean;//分页类
	private User u;
	private Food f;
	private Restaurant res;
	
	
	public UserServiceImp getUserservice() {
		return userservice;
	}
	public void setUserservice(UserServiceImp userservice) {
		this.userservice = userservice;
	}
	public Food getF() {
		return f;
	}
	public void setF(Food f) {
		this.f = f;
	}
	public Restaurant getRes() {
		return res;
	}
	public void setRes(Restaurant res) {
		this.res = res;
	}
	
	public User getU() {
		return u;
	}
	public void setU(User u) {
		this.u = u;
	}
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	
	public OPageBean getOpagebean() {
		return opagebean;
	}
	public void setOpagebean(OPageBean opagebean) {
		this.opagebean = opagebean;
	}
	public OrderServiceImp getOrderservice() {
		return orderservice;
	}
	public void setOrderservice(OrderServiceImp orderservice) {
		this.orderservice = orderservice;
	}
	public Order getO() {
		return o;
	}
	public void setO(Order o) {
		this.o = o;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	//前端 下单
	public String qdadd() throws Exception {
		System.out.println("正在执行action中dqadd方法");
		
		try {
			System.out.println("uname="+this.getU().getUname());
			User u=userservice.selectByUname(this.getU().getUname());  //获取uid
			System.out.println("uid="+u.getUid());
			
			Cart cart=(Cart)ActionContext.getContext().getSession().get("cart");
			Map map=cart.getCart();
			
			Iterator it=map.entrySet().iterator();
			System.out.println("map.entrySet().size()="+map.entrySet().size());
			String key;
			String value;
			while(it.hasNext()){
				Map.Entry entry=(Map.Entry)it.next();
				key=entry.getKey().toString();
				value=entry.getValue().toString();
				System.out.println(key+"===="+value);
				Food f=(Food) entry.getValue();
				
				System.out.println("fid="+f.getFid());
				System.out.println("uid="+u.getUid());
				System.out.println("fname="+f.getFname());
				System.out.println("price="+f.getPrice());
				System.out.println("number="+f.getNumber());
				System.out.println("rname="+f.getRestaurant().getRname());
				System.out.println(f);
				
				//赋值
				this.getO().setFood(f);
				this.getO().setUser(u);
				this.getO().getRestaurant().setRid(f.getRestaurant().getRid());
				this.getO().setCount(o.getCount());
				this.getO().setAllprice(40);
				this.getO().setStatus(2);
				boolean result=orderservice.add(this.getO());
				if(result){
					System.out.println("下单成功！");
					return this.selectByUname();
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return this.selectByUname();
		}
		return this.selectByUname();
		
	}
	
	//审核
	public String selectByStatus() throws Exception {
		System.out.println("正在执行action中selectByStatus方法");
		boolean result=orderservice.selectByStatus(this.getO().getOid());
		if(result){
			System.out.println("审核通过");
			return	this.selectByUname();
		}else{
			System.out.println("审核失败！");
			return this.selectByUname();
		}
	}
	
	//前端 delete
	public String qddelete() throws Exception {
		System.out.println("正在执行action中qddelete方法");
		boolean result=orderservice.delete(this.getO().getOid());
		if(result){
			System.out.println("删除成功！");
			return this.selectByUname();
		}else{
			System.out.println("删除失败！");
			return "order";
		}
	}
	
	//前端 order
	public String selectByUname() throws Exception {
		System.out.println("正在执行action中selectByUname方法");
		List<Order> list=orderservice.selectByUname(this.getU().getUname());
		if(list.size()>0){
			System.out.println("有数据");
			ActionContext.getContext().getSession().put("list", list);
			return "order";
		}else{
			System.out.println("暂时没有订单");
			return "onull";
		}
	}
	
	//店主 删除
	public String dzdelete() throws Exception {
		System.out.println("正在执行action中listall方法");
		boolean result=orderservice.delete(this.getO().getOid());
		if(result){
			System.out.println("删除成功！");
			return this.selectByRid();
		}else{
			System.out.println("删除失败！");
			return ERROR;
			}
		}
	
	//店铺 显示所有
	public String selectByRid() throws Exception {
		System.out.println("正在执行action中selectByRid方法");
		System.out.println("rid="+this.getO().getRestaurant().getRid());
		List<Order> list=orderservice.selectByRid(this.getO().getRestaurant().getRid());
		if(list.size()>0){
			ActionContext.getContext().getSession().put("dzlist", list);
			System.out.println("有数据！");
			return "dzshowall";
		}else{
			System.out.println("没有数据");
			return "null";
		}
	}
	
	//显示所有
	public String listall() throws Exception {
		System.out.println("正在执行action中listall方法");
		List<Order> list=orderservice.listall();
		if(list.size()>0){
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("list", list);
			return "showall";
		}else{
			System.out.println("没有数据！");
			return "add";
		}
	}
	
	//add
	public String add() throws Exception {
		System.out.println("正在执行action中listall方法");
		boolean result=orderservice.add(this.getO());
		if(result){
			System.out.println("添加成功！");
			return this.listall();
		}else{
			System.out.println("没有数据！");
			return "add";
		}
	}
	
	//删除
	public String delete() throws Exception {
		System.out.println("正在执行action中listall方法");
		boolean result=orderservice.delete(this.getO().getOid());
		if(result){
			System.out.println("删除成功！");
			return this.listall();
		}else{
			System.out.println("删除失败！");
			return ERROR;
			}
		}
	
	//预修改
	public String preupdate() throws Exception {
		System.out.println("正在执行action中listall方法");
		Order o=orderservice.selectByOid(this.getOid());
		if(o!=null){
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("preupdate", o);
			return "update";
		}else{
			System.out.println("没有数据");
			return this.listall();
		}
	}
	
	//修改
	public String update() throws Exception {
		System.out.println("正在执行action中listall方法");
		boolean result=orderservice.update(this.getO());
		if(result){
			System.out.println("修改成功！");
			return this.listall();
		}else{
			System.out.println("修改失败！");
			return "update";
		}
	}
	
	//已完成 分页
	public String selectByPage() throws Exception {
		System.out.println("正在执行action中分页selectByPage");
		int current=this.getCurrentpage();
		if(current<1){
			current=1;
		}
		if(current>opagebean.getAllpage()){
			current=opagebean.getAllpage();
		}
		List<Order> list=opagebean.queryforpage(current);
		if(list.size()>0){
			System.out.println("数据库内有数据");
			Map<String, Object> session=ActionContext.getContext().getSession();
			session.put("opagelist", list);
			session.put("currentpage", current);
			session.put("allpage", opagebean.getAllpage());
			session.put("allrecord", opagebean.getAllrecord());
			return this.listall();
		}else{
			System.out.println("数据库内没有数据");
			return "add";
		}
	}
	
	
}
