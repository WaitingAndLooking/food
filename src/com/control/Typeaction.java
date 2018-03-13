package com.control;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.page.TPageBean;
import com.service.ResServiceImp;
import com.service.TypeServiceImp;
import com.user.entity.Food;
import com.user.entity.Restaurant;
import com.user.entity.Type;

public class Typeaction extends ActionSupport{
	private Type t;
	private int tid;
	private TypeServiceImp typeservice;
	private int currentpage;//当前页数
	private TPageBean tpagebean;//分页类
	private ResServiceImp resservice;
	
	
	public ResServiceImp getResservice() {
		return resservice;
	}
	public void setResservice(ResServiceImp resservice) {
		this.resservice = resservice;
	}
	
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	
	public TPageBean getTpagebean() {
		return tpagebean;
	}
	public void setTpagebean(TPageBean tpagebean) {
		this.tpagebean = tpagebean;
	}
	public Type getT() {
		return t;
	}
	public void setT(Type t) {
		this.t = t;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public TypeServiceImp getTypeservice() {
		return typeservice;
	}
	public void setTypeservice(TypeServiceImp typeservice) {
		this.typeservice = typeservice;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	//店铺查询tname
	/*public String xgselectOnlyName() throws Exception {
		System.out.println("正在执行action中xgselectOnlyName方法");
		List<Type> xgtname=typeservice.selectAllOnlyName();
		if(xgtname!=null){
			System.out.println("有几条数据="+xgtname.size());
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("xgtname", xgtname);
			return "xgfood";
		}else{
			System.out.println("没有数据！");
			return ERROR;
		}
	}*/
	
	//查询tname
	public String selectOnlyName() throws Exception {
		System.out.println("正在执行action中selectOnlyName方法");
		List<Type> tname=typeservice.selectAllOnlyName();
		List<Restaurant> rname=resservice.selectAllOnlyName();
		if(tname!=null&&rname!=null){
			System.out.println("有几条数据="+tname.size());
			System.out.println("rname.size="+rname.size());
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("tname", tname);
			ActionContext.getContext().getSession().put("rname", rname);
			return "fadd";
		}else{
			System.out.println("没有数据！");
			return ERROR;
		}
	}
	
	//显示所有
	public String listall() throws Exception {
		System.out.println("正在执行action中listall方法");
		List<Type> list=typeservice.listall();
		if(list!=null){
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("tlist", list);
			return "showall";
		}else{
			System.out.println("没有数据！");
			return "add";
		}
	}
	
	//添加
	public String add() throws Exception {
		System.out.println("正在执行action中add方法");
		boolean result=typeservice.add(this.getT());
		if(result){
			System.out.println("添加成功！");
			return this.selectByPage();
		}else{
			System.out.println("添加失败！");
			return ERROR;
		}
	}
	
	//删除
	public String delete() throws Exception {
		System.out.println("正在执行action中delete方法");
		System.out.println("tid="+this.getT().getTid());
		boolean result=typeservice.delete(this.getT().getTid());
		if(result){
			System.out.println("删除成功！");
			return this.selectByPage();
		}else{
			System.out.println("删除失败！");
			return	ERROR;
		}
	}
	
	//预修改
	public String preupdate() throws Exception {
		System.out.println("正在执行action中preupdate方法");
		Type t=typeservice.selectByTid(this.getTid());
		if(t!=null){
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("t", t);
			return "update";
		}else{
			System.out.println("没有数据！");
			return this.selectByPage();
		}
	}
	
	//修改
	public String update() throws Exception {
		System.out.println("正在执行action中update方法");
		boolean result=typeservice.update(this.getT());
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
		System.out.println("正在执行action中分页selectByPage");
		int current=this.getCurrentpage();
		if(current<1){
			current=1;
		}
		if(current>tpagebean.getAllpage()){
			current=tpagebean.getAllpage();
		}
		List<Type> list=tpagebean.queryforpage(current);
		if(list.size()>0){
			System.out.println("数据库内有数据");
			Map<String, Object> session=ActionContext.getContext().getSession();
			session.put("tpagelist", list);
			session.put("currentpage", current);
			session.put("allpage", tpagebean.getAllpage());
			session.put("allrecord", tpagebean.getAllrecord());
			return this.listall();
		}else{
			System.out.println("数据库内没有数据");
			return "add";
		}
	}
	
	
}
