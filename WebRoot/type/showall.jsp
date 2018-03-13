<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	<s:head />

	<body>
		<br />
		<br />
		<br />
		<div align="center">

			<table width="100%" border="1" align="center" height="350">
				<tbody>
					<tr>
						<td align="center">
							<font size="4" face="仿宋"><strong>序号 </strong>
							</font>
						</td>
						<td align="center">
							<font size="4" face="仿宋"><strong>类型</strong>
							</font>
						</td>
						<td align="center">
							<font size="4" face="仿宋"><strong>操作</strong>
							</font>
						</td>
					</tr>
					<s:iterator value="#session.tpagelist" status="status" var="t">
						<tr>
							<td align="center">
								<s:property value="#status.count" />
							</td>
							<td align="center">
								<s:property value="#t.tname" />
							</td>
							<td align="center">
								<a
									href="/meituanwaimai/typeaction!delete?t.tid=<s:property value='tid'/> ">删除</a>
							</td>
						</tr>
					</s:iterator>
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
				<font face="仿宋" size="4"><a
					href="/meituanwaimai/typeaction!selectByPage?currentpage=1">首页</a>
					<a
					href="/meituanwaimai/typeaction!selectByPage?currentpage=<s:property value='#session.currentpage-1'/>">上一页</a>
					<a
					href="/meituanwaimai/typeaction!selectByPage?currentpage=<s:property value='#session.currentpage+1'/>">下一页</a>
					<a
					href="/meituanwaimai/typeaction!selectByPage?currentpage=<s:property value='#session.allpage'/>">最后一页</a>
				</font>
			</div>
		
	</body>
</html>
