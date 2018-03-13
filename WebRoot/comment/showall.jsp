<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.user.entity.Comment"%>
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
	<s:head />

	<body>
		<br />
		<br />
		<br />
		<div align="center">

			<table width="100%" border="1" align="center" height="300">
				<tbody>
					<tr>
						<td align="center">
							<font size="4" face="仿宋"> <strong>序号 </strong>
							</font>
						</td>
						<td align="center" width="120">
							<font size="4" face="仿宋"> <strong>餐厅</strong> </font>
						</td>
						<td align="center" width="150">
							<font size="4" face="仿宋"> <strong>用户</strong> </font>
						</td>
						<td align="center" width="200">
							<font size="4" face="仿宋"> <strong>评论</strong> </font>
						</td>
						<td align="center" width="100">
							<font size="4" face="仿宋"> <strong>日期 </strong>
							</font>
						</td>
						<td align="center" width="80">
							<strong><font face="仿宋" size="4"> 操作 </font>
							</strong>
						</td>
					</tr>
					<%
						List<Comment> list = (List<Comment>) session
								.getAttribute("cpagelist");
						Iterator it = list.iterator();
						while (it.hasNext()) {
					%>
					<s:iterator value="#session.cpagelist" status="status" var="c">
						<tr>
							<td align="center">
								<font size="4" face="仿宋"><s:property
										value="#status.count" /> </font>
							</td>
							<td align="center">
								<font size="4" face="仿宋"> <s:property
										value="#c.restaurant.rname" /> </font>
							</td>
							<td align="center">
								<font size="4" face="仿宋"> <s:property
										value="#c.user.uname" /> </font>
							</td>
							<td align="center">
								<font size="4" face="仿宋"> <s:property value="#c.content" />
								</font>
							</td>
							<td align="center">
								<font size="4" face="仿宋"> <%
 	Comment c = (Comment) it.next();
 			SimpleDateFormat sdf = new SimpleDateFormat(
 					"yyyy-MM-dd HH:mm:ss");
 			String d = sdf.format(c.getDate());
 %> <!--<s:property value="#c.date"/>
						
						--><%=d%> </font>
							</td>
							<td align="center">
								<font size="4" face="仿宋"><a
									href="/meituanwaimai/comaction!delete.action?c.cid=<s:property value='cid'/>">删除</a>
								</font>
							</td>
						</tr>
					</s:iterator>

					<%
						}
					%>
				</tbody>
			</table>
		</div>
		共
		<font color="#ff0000" size="5"><s:property
				value="#session.allrecord" /> </font>条记录，共
		<font color="#ff0000" size="5"><s:property
				value="#session.allpage" /> </font>页，当前页数为
		<font color="#ff0000" size="5"><s:property
				value="#session.currentpage" /> </font>
		<br />
		<br />
		<div align="center">
			<font size="4" face="仿宋"><strong><a
					href="/meituanwaimai/comaction!selectByPage?currentpage=1">首页</a> <a
					href="/meituanwaimai/comaction!selectByPage?currentpage=<s:property value='#session.currentpage-1'/>">上一页</a>
					<a
					href="/meituanwaimai/comaction!selectByPage?currentpage=<s:property value='#session.currentpage+1'/>">下一页</a>
					<a
					href="/meituanwaimai/comaction!selectByPage?currentpage=<s:property value='#session.allpage'/>">最后一页</a>
			</strong>
			</font>

		</div>
	</body>
</html>
