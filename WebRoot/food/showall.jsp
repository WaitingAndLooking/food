<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.Food"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<STYLE type="text/css">
	a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}
	
	</STYLE>

	</head>

	<body>
	<br/>
	<br/>
	<br/>
		
		<table width="100%" border="1" height="147" align="center">
			<tbody>
				<tr>
					<td align="center"> 
						<font size="4" face="仿宋"><strong>序号</strong></font> 
					</td>
					<td align="center" width="100" height="100"> 
						<font size="4" face="仿宋"><strong>美图</strong></font> 
					</td>
					<td align="center"> 
						<font size="4" face="仿宋"><strong>美食名</strong></font> 
					</td>
					<td align="center"> 
						<font size="4" face="仿宋"><strong>类型</strong></font> 
					</td>
					<td align="center"> 
						<font size="4" face="仿宋"><strong>餐厅</strong></font> 
					</td>
					<td align="center"> 
						<font size="4" face="仿宋"><strong>价格</strong></font> 
					</td>
					<td align="center"><font size="4" face="仿宋"><strong> 
						开售日期 
					</strong></font></td>
					<td align="center"> 
						<font size="4" face="仿宋"><strong>介绍</strong></font> 
					</td>
					<td align="center" width="100"> 
						<font size="4" face="仿宋"><strong>配方</strong></font> 
					</td>
					<td align="center" width="100"> 
						<font size="4" face="仿宋"><strong>操作</strong></font> 
					</td>
				</tr>
				<% 
					List<Food> list =(List<Food>)session.getAttribute("fpagelist"); 
					Iterator it = list.iterator();
					while (it.hasNext()) { 
				%>
				<s:iterator value="#session.fpagelist" status="status" var="f">
					<tr>
						<td align="center">
							<s:property value="#status.count" />
						</td>
						<td align="center">
							<img src="img/<s:property value='#f.img'/>">
						</td>
						<td align="center">
							<s:property value="#f.fname" />
						</td>
						<td align="center" width="50">
							<s:property value="#f.type.tname" />
						</td>
						<td align="center">
							<s:property value="#f.restaurant.rname" />
						</td>
						<td align="center" width="50">
							￥
							<s:property value="#f.price" />
						</td>
						<td align="center">
							<%
 				Food f = (Food) it.next();
 				SimpleDateFormat sdf = new SimpleDateFormat(
 					"yyyy-MM-dd HH:mm:ss");
 			String d = sdf.format(f.getDate());%>
 			<%=d%>
					</td>
					<td align="center">
						<s:property value="#f.introduce"/>
					</td>
					<td align="center">
						<s:property value="#f.process"/>
					</td>
					<td align="center">
						<a href="/meituanwaimai/foodaction!preupdate.action?f.fid=<s:property value='fid'/>">修改</a>
						<a href="/meituanwaimai/foodaction!delete.action?f.fid=<s:property value='fid'/>">删除</a>
					</td>
				</tr>
				</s:iterator>
				<%} %>
			</tbody>
		</table>
		共
		<font color="#ff0000" size="5"><s:property
				value="#session.allrecord" /> </font>条记录，共
		<font color="#ff0000" size="5"><s:property
				value="#session.allpage" /> </font>页，当前页数为
		<font color="#ff0000" size="5"><s:property
				value="#session.currentpage" /> </font>
		<br />
		<br />
		<div align="center"><font face="仿宋" size="4"><a href="/meituanwaimai/foodaction!selectByPage?currentpage=1">首页</a>  
		<a href="/meituanwaimai/foodaction!selectByPage?currentpage=<s:property value='#session.currentpage-1'/>">上一页</a>  
		<a href="/meituanwaimai/foodaction!selectByPage?currentpage=<s:property value='#session.currentpage+1'/>">下一页</a>  
		<a href="/meituanwaimai/foodaction!selectByPage?currentpage=<s:property value='#session.allpage'/>">最后一页</a></font></div>
	
	</body>
</html>
