<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.User"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
	<s:head />
	<body>
		<div align="center">
			<font size="6"><strong>用户信息<br> </strong> </font>
		</div>
		<br />
		<table width=100% border="1" align="center" height="400">
			<tbody>
				<tr>
					<td align="center"><font face="仿宋" size="4"><strong> 
						序号 
					</strong></font></td>
					
					<td align="center"><font face="仿宋" size="4"><strong> 
						姓名 
					</strong></font></td>
					<td align="center"><font face="仿宋" size="4"><strong> 
						性别 
					</strong></font></td>
					<td align="center"><font face="仿宋" size="4"><strong> 
						联系方式 
					</strong></font></td>
					<td align="center"><font face="仿宋" size="4"><strong> 
						电子邮件 
					</strong></font></td>
					<td align="center"><font face="仿宋" size="4"><strong> 
						权限 
					</strong></font></td>
					<td align="center"><font face="仿宋" size="4"><strong> 
						操作 
					</strong></font></td>
				</tr>
				<%
					List<User> list = (List<User>) session.getAttribute("pagelist");
					Iterator it = list.iterator();
					while (it.hasNext()) {
				%>
				<s:iterator value="#session.pagelist" status="status" var="u">
					<tr>
						<td align="center">
							<s:property value="#status.count" />
						</td>
						<td align="center">
							<s:property value="#u.uname" />
						</td>
						<td align="center">
							<s:property value="#u.sex" />
						</td>
						<td align="center">
							<s:property value="#u.phone" />
						</td>
						<td align="center">
							<s:property value="#u.email" />
						</td>

						<td align="center">
							<%
								User u = (User) it.next();
										String str = "";
										int i = u.getMyright();
										if (i == 1) {
											str = "管理员";
										}
										if (i == 2) {
											str = "用户";
										}
										if (i == 3) {
											str = "店主";
										}
							%>
							<%=str%>

						</td>
						<td align="center">
							<a
								href="/meituanwaimai/useraction!delete.action?u.uid=<s:property value='uid'/>">删除</a>
							<a
								href="/meituanwaimai/useraction!preupdate.action?u.uid=<s:property value='uid'/>">修改</a>
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
		<div align="center"><font size="4" face="仿宋"><strong><a href="/meituanwaimai/useraction!listBypage?currentpage=1">首页</a>  
		<a href="/meituanwaimai/useraction!listBypage?currentpage=<s:property value='#session.currentpage-1'/>">上一页</a>  
		<a href="/meituanwaimai/useraction!listBypage?currentpage=<s:property value='#session.currentpage+1'/>">下一页</a>  
		<a href="/meituanwaimai/useraction!listBypage?currentpage=<s:property value='#session.allpage'/>">最后一页</a></strong></font></div>
	</body>
</html>
