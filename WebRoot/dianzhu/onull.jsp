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
		<div align="center">
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
				<div> 
			<strong><font size="4">本店暂无菜单！</font></strong>
			</div>
			</tbody>
		</table>
		</div>
	</body>
</html>
