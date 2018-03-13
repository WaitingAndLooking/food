<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.user.entity.User"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
<style type="text/css">
	#btn {
	width: 100px;
	height: 30px;
	align:center;
}
	</style>

	</head>

	<body>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<div align="center">
		
		<s:iterator value="#session.showres" var="res">
		<!--<s:property value="#res.user.uid"/>
		
		--></s:iterator>
		<s:form action="/meituanwaimai/resaction!dzadd.action" method="post">
			<s:hidden name="action" value="insert" />
			
			<!--<s:textfield label="用户号" name="res.user.uid"></s:textfield>
			
			-->
			<s:textfield label="店名" name="res.rname" cssStyle="height: 25px; border-radius: 15px;"></s:textfield>
			<br />
			<s:textfield label="地址" name="res.addr" cssStyle="height: 25px; border-radius: 15px;"></s:textfield>
			<br />
			<s:textfield label="特色食品" name="res.foods" cssStyle="height: 25px; border-radius: 15px;"></s:textfield>
			<br />
			<s:textarea label="店铺介绍" name="res.comments" cssStyle="height: 50px; border-radius: 15px;width:200px;"></s:textarea>
			<br />
			<s:hidden name="res.status" value="2"></s:hidden>
			<s:hidden name="res.user.uid" value="%{#res.user.uid}" />
			
		<td>
			<s:submit value="确定" theme="simple" id="btn"></s:submit>
		</td>
		</s:form>
		</div>
	</body>
</html>
