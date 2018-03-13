<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.Restaurant"%>
<%@taglib prefix="s" uri="/struts-tags"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<style type="text/css">
	
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
	
	</style>


	</head>

	<body>
		<br/>
		<br/>
		<br/>
		<table width="100%" border="1" height="400" align="center">
			<tbody>
				<tr align="center">
					<td width="60"><font face="仿宋" size="5"><strong> 
						<font size="4">序号 </font>
					</strong></font></td>
					<td width="100"><font face="仿宋" size="5"><strong> 
						餐厅名 
					</strong></font></td>
					<td width="80"><font face="仿宋" size="5"><strong> 
						店主 
					</strong></font></td>
					<td><font face="仿宋" size="5"><strong> 
						地址 
					</strong></font></td>
					<td width="170"><font face="仿宋" size="5"><strong> 
						特色食品 
					</strong></font></td>
					<td><font face="仿宋" size="5"><strong> 
						评价 
					</strong></font></td>
					<td width="90"><font face="仿宋" size="5"><strong> 
						<font size="4">营业状态</font> 
					</strong></font></td>
					<td width="150"><font face="仿宋" size="5"><strong> 
						操作 
					</strong></font></td>
				</tr>
				<%
					List<Restaurant> list = (List<Restaurant>) session
							.getAttribute("rpagelist");
					Iterator it = list.iterator();
					while (it.hasNext()) {
				%>
				<s:iterator value="#session.rpagelist" status="status" var="res">
					<tr>
						<td align="center">
							<s:property value="#status.count" />
						</td>
						<td align="center">
							<s:property value="#res.rname" />
						</td>
						<td align="center">
							<s:property value="#res.user.uname"/>
						</td>
						<td align="center">
							<s:property value="#res.addr" />
						</td>
						<td align="center">
							<s:property value="#res.foods" />
						</td>
						<td align="center">
							<s:property value="#res.comments" />
						</td>
						<td align="center">
							<%
								Restaurant res = (Restaurant) it.next();
										String str = "";
										int i = res.getStatus();
										if (i == 1) {
											str = "营业";
										}
										if (i == 2) {
											str = "未营业";
										}
							%>
							<%=str%>
						</td>
						<td align="center">
							<a
								href="/meituanwaimai/resaction!delete.action?res.rid=<s:property value='rid'/>" >删除</a>
							<a
								href="/meituanwaimai/resaction!preupdate.action?res.rid=<s:property value='rid'/>" >修改</a>
								<a href="/meituanwaimai/resaction!shenhe.action?res.rid=<s:property value='rid'/>">审核</a>
						</td>
					</tr>
				</s:iterator>
				<%
					}
				%>
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
		<div align="center"><font face="仿宋" size="4"><a href="/meituanwaimai/resaction!selectByPage?currentpage=1">首页</a>  
		<a href="/meituanwaimai/resaction!selectByPage?currentpage=<s:property value='#session.currentpage-1'/>">上一页</a>  
		<a href="/meituanwaimai/resaction!selectByPage?currentpage=<s:property value='#session.currentpage+1'/>">下一页</a>  
		<a href="/meituanwaimai/resaction!selectByPage?currentpage=<s:property value='#session.allpage'/>">最后一页</a></font></div>
	</body>
</html>
