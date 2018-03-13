<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'showall.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
	<s:head/>

	<body>
		<br />
		<br />
		<br />
		<table width="100%" border="1">
			<tbody>
				<tr>
					<td align="center"><font size="5" face="仿宋"><strong> 
						序号 
					</strong></font></td>
					<td align="center"><font size="5" face="仿宋"><strong> 
						用户 
					</strong></font></td>
					<td align="center"><font size="5" face="仿宋"><strong> 
						美食 
					</strong></font></td>
					<td align="center"><font size="5" face="仿宋"><strong> 
						餐馆 
					</strong></font></td>
					<td align="center"><font size="5" face="仿宋"><strong> 
						数量 
					</strong></font></td>
					<td align="center"><font size="5" face="仿宋"><strong> 
						总价 
					</strong></font></td>
					<td align="center"><font size="5" face="仿宋"><strong> 
						订单状态 
					</strong></font></td>
					<td align="center"><font size="5" face="仿宋"><strong> 
						操作 
					</strong></font></td>
				</tr>
				<s:iterator value="#session.opagelist" status="status" var="o">
				
				<tr>
					<td align="center"><font size="4" face="仿宋">
						<s:property value="#status.count"/>
					</font></td>
					<td align="center"><font size="4" face="仿宋">
						<s:property value="#o.user.uname"/>
					</font></td>
					<td align="center"><font size="4" face="仿宋">
						<s:property value="#o.food.fname"/>
					</font></td>
					<td align="center"><font size="4" face="仿宋">
						<s:property value="#o.restaurant.rname"/>
					</font></td>
					<td align="center"><font size="4" face="仿宋">
						<s:property value="#o.count"/>
					</font></td>
					<td align="center"><font size="4" face="仿宋">
						￥<s:property value="#o.allprice"/>
					</font></td>
					<td align="center"><font size="4" face="仿宋">
						<s:if test="%{#o.status==1}">
						已完成
						</s:if>
						<s:else>
						未完成
						</s:else>
					</font></td>
					<td align="center"><font size="4" face="仿宋">
						<a href="/meituanwaimai/orderaction!delete?o.oid=<s:property value='oid'/>">删除</a>
					</font></td>
				</tr>
				
				</s:iterator>
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
		<div align="center"><font size="4" face="仿宋"><strong><a href="/meituanwaimai/orderaction!selectByPage?currentpage=1">首页</a>  
		<a href="/meituanwaimai/orderaction!selectByPage?currentpage=<s:property value='#session.currentpage-1'/>">上一页</a>  
		<a href="/meituanwaimai/orderaction!selectByPage?currentpage=<s:property value='#session.currentpage+1'/>">下一页</a>  
		<a href="/meituanwaimai/orderaction!selectByPage?currentpage=<s:property value='#session.allpage'/>">最后一页</a></strong></font></div>
	
	</body>
</html>
