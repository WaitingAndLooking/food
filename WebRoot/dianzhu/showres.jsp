<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.Restaurant"%>
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
  <s:head/>
  
  <body>
		<div align="center">
			<br/>
		<br/>
		<br />
		<table width="100%" border="1" height="300" align="center">
			<tbody>
				<tr>
					<td align="center">
						<font size="4"><strong><font face="仿宋">序号</font></strong></font>
					</td>
					<!--<td align="center" width="180">
						<font face="仿宋">店铺序号</font>
					</td>
					--><td align="center">
						<font size="4"><strong><font face="仿宋">店主</font></strong></font>
					</td>
					<td align="center">
						<font size="4"><strong><font face="仿宋">店名</font></strong></font>
					</td>
					<td align="center">
						<font size="4"><strong><font face="仿宋">地址</font></strong></font>
					</td>
					<td align="center">
						<font size="4"><strong><font face="仿宋">食品</font></strong></font>
					</td>
					<td align="center">
						<font size="4"><strong><font face="仿宋">店铺介绍</font></strong></font>
					</td>
					<td align="center">
						<font size="4"><strong><font face="仿宋">营业状态</font></strong></font>
					</td>
					<td align="center" width="80">
						<font size="4"><strong><font face="仿宋">操作</font></strong></font>
					</td>
				</tr>
				<s:iterator value="#session.showres"  status="status" var="showres">
				<tr>
					<td align="center">
						<font face="仿宋"><s:property value="#status.count"/></font>
					</td><!--
					<td align="center">
						<font face="仿宋"><s:property value="#showres.rid"/></font>
					</td>
					--><td align="center">
						<font face="仿宋"><s:property value="#showres.user.uname"/></font>
					</td>
					<td align="center">
						<font face="仿宋"><s:property value="#showres.rname"/></font>
					</td>
					<td align="center">
						<font face="仿宋"><s:property value="#showres.addr"/></font>
					</td>
					<td align="center">
						<font face="仿宋"><s:property value="#showres.foods"/></font>
					</td>
					<td align="center">
						<font face="仿宋"><s:property value="#showres.comments"/></font>
					</td>
					<td align="center">
						<font face="仿宋">
							<s:if test="#showres.status=='1'">
								营业
							</s:if>
							<s:else>
								未营业
							</s:else>
							</font>
					</td>
					<td align="center">
						<font face="仿宋">
						<a href="/meituanwaimai/resaction!dzpreupdate.action?res.rid=<s:property value='rid'/>">修改</a>
						 </font>
						 <font face="仿宋">
						<a href="/meituanwaimai/resaction!dzdelete.action?res.rid=<s:property value='rid'/>">删除</a>
						 </font>
					</td>
				</tr>
				</s:iterator>
			</tbody>
		</table>
		</div>
	</body>
</html>
