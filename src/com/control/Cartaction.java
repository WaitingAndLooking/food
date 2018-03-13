package com.control;

import com.cart.Cart;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.FoodServiceImp;
import com.user.entity.Food;

public class Cartaction extends ActionSupport{
	private int fid;
	private int number=1;
	private Cart cart;
	private Food f;
	private FoodServiceImp foodservice;
	
	
	public Food getF() {
		return f;
	}
	public void setF(Food f) {
		this.f = f;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	
	public FoodServiceImp getFoodservice() {
		return foodservice;
	}
	public void setFoodservice(FoodServiceImp foodservice) {
		this.foodservice = foodservice;
	}
	
	@Override
	public String execute() throws Exception {
		System.out.println("一个样例");
		return super.execute();

	}
	
	public String add() throws Exception {
		System.out.println("正在执行action中add方法");
		System.out.println("fid="+this.getF().getFid());
		Food f=foodservice.selectByFid(this.getF().getFid());
		System.out.println("number="+this.getNumber());
		f.setNumber(this.getNumber());
		cart=(Cart)ActionContext.getContext().getSession().get("cart");
		System.out.println("cart="+cart);
		if(cart==null){
			System.out.println("当前会话范围内，第一次购物");
			System.out.println("number="+f.getNumber());
			cart=new Cart();
			cart.addfood(f);
			ActionContext.getContext().getSession().put("cart", cart);
			ActionContext.getContext().getSession().put("id", this.getFid());
			return "cart";
		}else{
			System.out.println("不是第一次购物，当前的购物对象已经存在");
			cart.addfood(f);
			ActionContext.getContext().getSession().put("cart", cart);
			return "cart";
		}

	}
	
	//删除
	public String delete() throws Exception {
		System.out.println("正在执行Acton中delete方法");
		boolean result=cart.deletefood(this.getF().getFid());
		if(result){
			System.out.println("action中删除成功！");
			return "cart";
		}else{
			System.out.println("action中删除失败！");
			return ERROR;
		}

	}
	
	//修改
	public String update() throws Exception {
		System.out.println("正在执行action中updatenumber方法");
		System.out.println("fid="+this.getF().getFid());
		System.out.println("number1="+this.getF().getNumber());
		Food f=foodservice.selectByFid(this.getF().getFid());
	/*	System.out.println("number3="+this.getF().getNumber());
		System.out.println("number2="+this.getNumber());*/
		boolean result=cart.updatefood(f, 2);
		if(result){
			System.out.println("action中修改成功");
			return "cart";
		}else{
			System.out.println("action中修改失败！");
			return ERROR;
		}

	}
	
	
}
