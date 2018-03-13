package com.page;

import java.util.ArrayList;
import java.util.List;

import com.service.IFoodService;
import com.user.entity.Food;


public class FPageBean {
	private int allrecord;//总记录数
	private int allpage;//总页数
	private int pagerecord=4;//每一页显示的记录数
	private int currentpage;//当前页数
	private IFoodService foodservice;
	
	
	public int getAllrecord() {//总记录
		List<Food> list=new ArrayList<Food>();
		list=foodservice.listall();
		allrecord=list.size();
		System.out.println("allrecord   "+allrecord);
		return allrecord;
	}
	public void setAllrecord(int allrecord) {
		this.allrecord = allrecord;
	}
	public int getAllpage() {//总页数
		allpage=this.getAllrecord()%this.getPagerecord()==0?this.getAllrecord()/this.getPagerecord():this.getAllrecord()/this.getPagerecord()+1;
		System.out.println("allpage   "+allpage);
		return allpage;
	}
	public void setAllpage(int allpage) {
		this.allpage = allpage;
	}
	public int getPagerecord() {
		return pagerecord;
	}
	public void setPagerecord(int pagerecord) {
		this.pagerecord = pagerecord;
	}
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	
	public IFoodService getFoodservice() {
		return foodservice;
	}
	public void setFoodservice(IFoodService foodservice) {
		this.foodservice = foodservice;
	}
	public List<Food> queryforpage(int currentpage){
		System.out.println("正在执行fpagebean中selectbypage");
		if(currentpage<1){
			currentpage=1;
		}
		if(currentpage>allpage){
			currentpage=allpage;
		}
		List<Food> list=new ArrayList<Food>();
		int offset=this.getPagerecord()*(currentpage-1)+1;
		System.out.println("offset    "+offset);
		list= foodservice.selectByPage(offset-1,this.getPagerecord());
		return list;
	}
	
}
