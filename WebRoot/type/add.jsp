<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

	</head>
	<s:head />

	<body>
		<div align="center">
			<font size="6"><strong>添加类型</strong>
			<br>
			</font>
		</div>
		<br />
		<div align="center">
		<s:form action="/meituanwaimai/typeaction!add.action" method="post">
			<s:hidden name="action" value="insert" />
			<s:textfield name="t.tname" label="类型" />
			<td>
				<s:submit value="添加" theme="simple" />
			</td>
			<td>
				<s:reset value="返回" theme="simple"></s:reset>
			</td>
		</s:form>
		
		</div>
	</body>
</html>
