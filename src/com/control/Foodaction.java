package com.control;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.page.FPageBean;
import com.service.FoodServiceImp;
import com.service.ResServiceImp;
import com.service.TypeServiceImp;
import com.user.entity.Food;
import com.user.entity.Restaurant;
import com.user.entity.Type;
import com.user.entity.User;

public class Foodaction extends ActionSupport {
	private Food f;
	private int fid;
	private FoodServiceImp foodservice;
	private int currentpage;//当前页数
	private FPageBean fpagebean;//分页类
	private TypeServiceImp typeservice;
	private ResServiceImp resservice;

	public ResServiceImp getResservice() {
		return resservice;
	}

	public void setResservice(ResServiceImp resservice) {
		this.resservice = resservice;
	}

	public TypeServiceImp getTypeservice() {
		return typeservice;
	}

	public void setTypeservice(TypeServiceImp typeservice) {
		this.typeservice = typeservice;
	}

	public int getCurrentpage() {
		return currentpage;
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public FPageBean getFpagebean() {
		return fpagebean;
	}

	public void setFpagebean(FPageBean fpagebean) {
		this.fpagebean = fpagebean;
	}

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

	public FoodServiceImp getFoodservice() {
		return foodservice;
	}

	public void setFoodservice(FoodServiceImp foodservice) {
		this.foodservice = foodservice;
	}

	private String name;

	// 上传多个文件的集合文本
	private List<File> upload;

	// /多个上传文件的类型集合
	private List<String> uploadContextType;

	// 多个上传文件的文件名集合
	private List<String> uploadFileName;


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<File> getUpload() {
		return upload;
	}

	public void setUpload(List<File> upload) {
		this.upload = upload;
	}

	public List<String> getUploadContextType() {
		return uploadContextType;
	}

	public void setUploadContextType(List<String> uploadContextType) {
		this.uploadContextType = uploadContextType;
	}

	public List<String> getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}
	
	/*//购物车
	public String cart() throws Exception {
		System.out.println("正在执行action中cart方法");
		Food f=foodservice.selectByFid(this.getF().getFid());
		if(f!=null){
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("f", f);
			return "cart";
		}else{
			System.out.println("没有数据！");
			return ERROR;
		}
	}*/
	
	//店铺 预修改
	public String dzpreupdate() throws Exception {
		System.out.println("正在执行action中preupdate方法");
		System.out.println("fid="+this.getF().getFid());
		Food f = foodservice.selectByFid(this.getF().getFid());
		List<Type> dzxgtname=typeservice.selectAllOnlyName();
		if (f!= null&&dzxgtname!=null) {
			System.out.println("有数据！");
			System.out.println("有几条数据="+dzxgtname.size());
			ActionContext.getContext().getSession().put("dzxgtname", dzxgtname);
			ActionContext.getContext().getSession().put("f", f);
			return "dzupdate";
		} else {
			System.out.println("没有数据！");
			return this.selectByRid();
		}
	}

	// 修改
	public String dzupdate() throws Exception {
		/*System.out.println("正在执行action中update方法");
		boolean result = foodservice.update(this.getF());
		if (result) {
			System.out.println("修改成功！");
			return this.selectByPage();
		} else {
			System.out.println("修改失败！");
			return "update";
		}*/
		System.out.println("正在执行action中update方法");
		// 把上传的文件放到指定的路径下  
		String path = ServletActionContext.getServletContext().getRealPath(  
		"img");  
		// 写到指定的路径中  

		File file = new File(path);  
		

		// 如果指定的路径没有就创建  
		if (!file.exists()) {  
			file.mkdirs();  
		}  
		System.out.println("fname="+f.getFname());
		System.out.println("fname="+this.getF().getFname());
		System.out.println(path);
		System.out.println(this.getUploadFileName().size());
		System.out.println(upload.size());
		
		// 把得到的文件的集合通过循环的方式读取并放在指定的路径下  
		for (int i = 0; i < upload.size(); i++) {      	
			try {  
				//list集合通过get(i)的方式来获取索引  
				FileUtils.copyFile(upload.get(i), new File(file, uploadFileName.get(i))); 

				//fid
				System.out.println("fid="+this.getF().getFid());
				f.setFid(f.getFid());
				//rid
				System.out.println("rid="+this.getF().getRestaurant().getRid());
				f.getRestaurant().setRid(f.getRestaurant().getRid());
				//tid
				System.out.println("tname="+this.getF().getType().getTname());
				Type t=typeservice.selectByTname(this.getF().getType().getTname());
				System.out.println("tid="+t.getTid());
				f.getType().setTid(t.getTid());
				
				f.setFname(f.getFname());
				f.setPrice(f.getPrice());
				f.setDate(f.getDate());
				f.setImg(this.getUploadFileName().get(i));
				f.setIntroduce(f.getIntroduce());
				f.setProcess(f.getProcess());
				boolean result=foodservice.update(f);
				if(result){
					System.out.println("修改成功！");
				}
				return this.selectByRid();
			} catch (IOException e) {  
				// TODO Auto-generated catch block  
				e.printStackTrace(); 
				
			}  
		}  
		return this.selectByRid();
	}
	
	//店主 删除
	public String dzdelete() throws Exception {
		System.out.println("正在执行action中delete方法");
		// System.out.println("fid="+this.getFid());
		System.out.println("fid=" + this.getF().getFid());
		boolean result = foodservice.delete(this.getF().getFid());
		if (result) {
			System.out.println("删除成功");
			return this.selectByRid();
		} else {
			System.out.println("删除失败");
			return ERROR;
		}
	}
	
	//店铺 预添加
	public String preupload() throws Exception {
		System.out.println("正在执行action中preupload方法");
		System.out.println("rid="+this.getF().getRestaurant().getRid());
		List<Type> dztname=typeservice.selectAllOnlyName();
		Restaurant res = foodservice.preupload(this.getF().getRestaurant().getRid());
		if (res != null&&dztname!=null) {
			System.out.println("有几条数据="+dztname.size());
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("dztname", dztname);
			ActionContext.getContext().getSession().put("res", res);
			return "addfood";
		} else {
			System.out.println("没有数据！");
			return this.selectByRid();
		}
	}
	
	//店鋪文件上传
	public String dzupload() throws Exception {  	  
		System.out.println("正在执行action中dzupload方法");
		// 把上传的文件放到指定的路径下  
		String path = ServletActionContext.getServletContext().getRealPath(  
		"img");  
		// 写到指定的路径中  

		File file = new File(path);  
		

		// 如果指定的路径没有就创建  
		if (!file.exists()) {  
			file.mkdirs();  
		}  
		System.out.println("fname="+f.getFname());
		System.out.println("fname="+this.getF().getFname());
		System.out.println(path);
		System.out.println(this.getUploadFileName().size());
		System.out.println(upload.size());
		
		// 把得到的文件的集合通过循环的方式读取并放在指定的路径下  
		for (int i = 0; i < upload.size(); i++) {      	
			try {  
				//list集合通过get(i)的方式来获取索引  
				FileUtils.copyFile(upload.get(i), new File(file, uploadFileName.get(i))); 

				
				
				f.getRestaurant().setRid(f.getRestaurant().getRid());
				System.out.println("rid="+f.getRestaurant().getRid());
				//tid
				System.out.println("tname="+this.getF().getType().getTname());
				Type t=typeservice.selectByTname(this.getF().getType().getTname());
				System.out.println("tid="+t.getTid());
				f.getType().setTid(t.getTid());
				
				f.setFname(f.getFname());
				f.setPrice(f.getPrice());
				f.setDate(f.getDate());
				f.setImg(this.getUploadFileName().get(i));
				f.setIntroduce(f.getIntroduce());
				f.setProcess(f.getProcess());
				boolean result=foodservice.add(f);
				if(result){
					System.out.println("添加成功！");
				}
				return this.selectByRid();
			} catch (IOException e) {  
				// TODO Auto-generated catch block  
				e.printStackTrace(); 
				
			}  
		}  
		return this.selectByRid(); 
	} 
	
	
	//店铺显示所有
	public String selectByRid() throws Exception {
		System.out.println("正在执行action中selectByRid方法");
		
		System.out.println("rid="+this.getF().getRestaurant().getRid());
		List<Food> list=foodservice.selectByRid(this.getF().getRestaurant().getRid());
		if(list.size()>0){
			System.out.println("有数据！");
			ActionContext.getContext().getSession().put("showf", list);
			return "showfood";
		}else{
			System.out.println("没有数据！");
			return "fnull";
		}
	}
	
	//文件上传
	public String upload() throws Exception {  	  
		System.out.println("正在执行action中upload方法");
		// 把上传的文件放到指定的路径下  
		String path = ServletActionContext.getServletContext().getRealPath(  
		"img");  
		// 写到指定的路径中  

		File file = new File(path);  
		

		// 如果指定的路径没有就创建  
		if (!file.exists()) {  
			file.mkdirs();  
		}  
		System.out.println("fname="+f.getFname());
		System.out.println("fname="+this.getF().getFname());
		System.out.println(path);
		System.out.println(this.getUploadFileName().size());
		System.out.println(upload.size());
		
		// 把得到的文件的集合通过循环的方式读取并放在指定的路径下  
		for (int i = 0; i < upload.size(); i++) {      	
			try {  
				//list集合通过get(i)的方式来获取索引  
				FileUtils.copyFile(upload.get(i), new File(file, uploadFileName.get(i))); 

				
				//rid
				System.out.println("rname="+this.getF().getRestaurant().getRname());
				Restaurant res=resservice.selectByRname(this.getF().getRestaurant().getRname());
				System.out.println("rid="+res.getRid());
				f.getRestaurant().setRid(res.getRid());
				//tid
				System.out.println("tname="+this.getF().getType().getTname());
				Type t=typeservice.selectByTname(this.getF().getType().getTname());
				System.out.println("tid="+t.getTid());
				f.getType().setTid(t.getTid());
				
				f.setFname(f.getFname());
				f.setPrice(f.getPrice());
				f.setDate(f.getDate());
				f.setImg(this.getUploadFileName().get(i));
				f.setIntroduce(f.getIntroduce());
				f.setProcess(f.getProcess());
				boolean result=foodservice.add(f);
				if(result){
					System.out.println("添加成功！");
				}
				return this.selectByPage();
			} catch (IOException e) {  
				// TODO Auto-generated catch block  
				e.printStackTrace(); 
				
			}  
		}  
		return this.selectByPage(); 
	}  
	
	public String getSavePath() {
		
		return ServletActionContext.getServletContext().getRealPath(getSavePath());
	}

	// 显示所有
	public String listall() throws Exception {
		System.out.println("正在执行action中listall方法");
		List<Food> list = foodservice.listall();
		if (list.size() > 0) {
			System.out.println("有数据");
			ActionContext.getContext().getSession().put("flist", list);
			return "showall";
		} else {
			System.out.println("没有数据");
			return "add";
		}
	}

	// 删除
	public String delete() throws Exception {
		System.out.println("正在执行action中delete方法");
		// System.out.println("fid="+this.getFid());
		System.out.println("fid=" + this.getF().getFid());
		boolean result = foodservice.delete(this.getF().getFid());
		if (result) {
			System.out.println("删除成功");
			return this.selectByPage();
		} else {
			System.out.println("删除失败");
			return ERROR;
		}
	}

	// 添加
	/*public String add() throws Exception {
		System.out.println("正在执行action中delete方法");
		boolean result = foodservice.add(this.getF());
		if (result) {
			System.out.println("添加成功！");
			return "showall";
		} else {
			System.out.println("添加失败！");
			return ERROR;
		}
	}*/

	// 预修改
	public String preupdate() throws Exception {
		System.out.println("正在执行action中preupdate方法");
		System.out.println("fid="+this.getF().getFid());
		Food f = foodservice.selectByFid(this.getF().getFid());
		List<Type> xgtname=typeservice.selectAllOnlyName();
		if (f!= null&&xgtname!=null) {
			System.out.println("有数据！");
			System.out.println("有几条数据="+xgtname.size());
			ActionContext.getContext().getSession().put("xgtname", xgtname);
			ActionContext.getContext().getSession().put("f", f);
			return "update";
		} else {
			System.out.println("没有数据！");
			return "showall";
		}
	}

	// 修改
	public String update() throws Exception {
		/*System.out.println("正在执行action中update方法");
		boolean result = foodservice.update(this.getF());
		if (result) {
			System.out.println("修改成功！");
			return this.selectByPage();
		} else {
			System.out.println("修改失败！");
			return "update";
		}*/
		System.out.println("正在执行action中update方法");
		// 把上传的文件放到指定的路径下  
		String path = ServletActionContext.getServletContext().getRealPath(  
		"img");  
		// 写到指定的路径中  

		File file = new File(path);  
		

		// 如果指定的路径没有就创建  
		if (!file.exists()) {  
			file.mkdirs();  
		}  
		System.out.println("fname="+f.getFname());
		System.out.println("fname="+this.getF().getFname());
		System.out.println(path);
		System.out.println(this.getUploadFileName().size());
		System.out.println(upload.size());
		
		// 把得到的文件的集合通过循环的方式读取并放在指定的路径下  
		for (int i = 0; i < upload.size(); i++) {      	
			try {  
				//list集合通过get(i)的方式来获取索引  
				FileUtils.copyFile(upload.get(i), new File(file, uploadFileName.get(i))); 

				//fid
				System.out.println("fid="+this.getF().getFid());
				f.setFid(f.getFid());
				//rid
				System.out.println("rid="+this.getF().getRestaurant().getRid());
				f.getRestaurant().setRid(f.getRestaurant().getRid());
				//tid
				System.out.println("tname="+this.getF().getType().getTname());
				Type t=typeservice.selectByTname(this.getF().getType().getTname());
				System.out.println("tid="+t.getTid());
				f.getType().setTid(t.getTid());
				
				f.setFname(f.getFname());
				f.setPrice(f.getPrice());
				f.setDate(f.getDate());
				f.setImg(this.getUploadFileName().get(i));
				f.setIntroduce(f.getIntroduce());
				f.setProcess(f.getProcess());
				boolean result=foodservice.update(f);
				if(result){
					System.out.println("修改成功！");
				}
				return this.selectByPage();
			} catch (IOException e) {  
				// TODO Auto-generated catch block  
				e.printStackTrace(); 
				
			}  
		}  
		return this.selectByPage();
	}

	// 分页
	public String selectByPage() throws Exception {
		System.out.println("正在执行action中分页selectByPage");
		int current=this.getCurrentpage();
		if(current<1){
			current=1;
		}
		if(current>fpagebean.getAllpage()){
			current=fpagebean.getAllpage();
		}
		List<Food> list=fpagebean.queryforpage(current);
		if(list.size()>0){
			System.out.println("数据库内有数据");
			Map<String, Object> session=ActionContext.getContext().getSession();
			session.put("fpagelist", list);
			session.put("currentpage", current);
			session.put("allpage", fpagebean.getAllpage());
			session.put("allrecord", fpagebean.getAllrecord());
			return this.listall();
		}else{
			System.out.println("数据库内没有数据");
			return "add";
		}
	}

}
