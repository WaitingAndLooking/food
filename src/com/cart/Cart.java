package com.cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.dao.FoodDAOImp;
import com.user.entity.Food;


public class Cart {
	private HashMap<Integer, Food> cart=null;
	FoodDAOImp fooddao=null;
	
	public Cart() {
		super();
		cart=new HashMap<Integer, Food>();
	}
	
	public HashMap<Integer, Food> getCart() {
		return cart;
	}
	public void setCart(HashMap<Integer, Food> cart) {
		this.cart = cart;
	}
	public FoodDAOImp getFooddao() {
		return fooddao;
	}
	public void setFooddao(FoodDAOImp fooddao) {
		this.fooddao = fooddao;
	}
	
	
	//添加商品
	public boolean addfood(Food f){
		System.out.println("正在执行cart中addfood");
		boolean flag=false;
		System.out.println("fid="+f.getFid()+f.getFname()+f.getPrice());
		try {
			if(!cart.containsKey(f.getFid())){
				System.out.println("~~~~~~~~");
				cart.put(f.getFid(), f);
				flag=true;
			}else{//获取原有该类商品的数量+现在购买该类商品的数量
				System.out.println("+++++");
				Food oldfood=cart.get(f.getFid());
				int number=oldfood.getNumber()+f.getNumber();
				f.setNumber(number);
				cart.put(f.getFid(), f);
				flag=true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			return flag;
	}
	
	//修改
	public boolean updatefood(Food f,int number){
		System.out.println("修改商品=="+f);
		boolean flag=false;
		if(cart.containsKey(f.getFid())){
			f.setNumber(number);
			cart.put(f.getFid(), f);
			flag=true;
		}else{
			System.out.println("购物车中没有该商品，不能修改");
		}
		return flag;
	}
	
	//删除
	public boolean deletefood(int fid){
		System.out.println("删除商品");
		System.out.println("fid="+fid);
		boolean flag=false;
		//有这个商品
		if(cart.containsKey(fid)){
			cart.remove(fid);
			flag=true;
		}else{
			System.out.println("当前购物车没有该类商品");
			return flag;
		}
		return flag;
	}
	
	//查看商品
	public List<Food> listall(){
		System.out.println("查询");
		List<Food> list=new ArrayList<Food>();
		Set set=cart.entrySet();
		Iterator it=set.iterator();
		while(it.hasNext()){
			//entry 映射关系
			Map.Entry<Integer, Food> entry=(Map.Entry<Integer, Food>)it.next();
			Food f=entry.getValue();
			list.add(f);
		}
		return list;
	}
	
	//金额遍历
	public double sum(){
		System.out.println("总额");
		double sum=0.0;
		Set set=cart.entrySet();
		Iterator it=set.iterator();
		while(it.hasNext()){
			Map.Entry<Integer, Food> entry=(Map.Entry<Integer, Food>)it.next();
			Food f=entry.getValue();
			sum+=f.getPrice()*f.getNumber();
		}
		return sum;
	}
	
}
