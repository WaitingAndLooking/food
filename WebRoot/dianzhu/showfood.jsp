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
		<br />
		<div align="center">
		
		<table width="100%" border="1" height="200" align="center">
			<tbody>
				<tr>
					<td align="center"> 
						<font face="仿宋"><strong><font size="4">序号</font> </strong></font>
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
					<td align="center"> 
						<font size="4" face="仿宋"><strong>开售日期</strong></font> 
					</td>
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
					List<Food> list =(List<Food>)  session.getAttribute("showf");
					Iterator it=list.iterator();
					while (it.hasNext()) { 
				%>
				<s:iterator value="#session.showf" status="status" var="f">
					<tr>
						<td align="center">
							<s:property value="#status.count" />
						</td>
						<td align="center">
							<font size="4" face="仿宋"><img src="img/<s:property value='#f.img'/>"></font>
						</td>
						<td align="center">
							<s:property value="#f.fname"/>
						<font face="仿宋" size="4"><br></font></td>
						<td align="center" width="50">
							<s:property value="#f.type.tname"/>
						<font face="仿宋" size="4"><br></font></td>
						<td align="center">
							<s:property value="#f.restaurant.rname"/>
						<font face="仿宋" size="4"><br></font></td>
						<td align="center" width="50"><font size="4" face="仿宋"> 
							￥ 
							</font><s:property value="#f.price" />
						</td>
						<td align="center">
							<%
								Food f = (Food) it.next();
										SimpleDateFormat sdf = new SimpleDateFormat(
												"yyyy-MM-dd HH:mm:ss");
										String d = sdf.format(f.getDate());
							%>
							<%=d%>
						</td>
						<td align="center">
							<s:property value="#f.introduce" />
						</td>
						<td align="center">
							<s:property value="#f.process" />
						</td>
						<td align="center">
							<a
								href="/meituanwaimai/foodaction!dzpreupdate.action?f.fid=<s:property value='fid'/>">修改</a>
							<a
								href="/meituanwaimai/foodaction!dzdelete.action?f.fid=<s:property value='fid'/>">删除</a>
						</td>
					</tr>
				</s:iterator>
				<%
					}
				%>
			</tbody>
		</table>
		</div>
	</body>
</html>
