<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<style type="text/css">
	.label{
		font-size: 30;
		font-family:仿宋;
	}
	
	</style>
	

	</head>
	<s:head />

	<body>
		<br>
		<br/>
		<br />
		<br>
		<br/>
		<br />
		<div align="center">
			<s:form action="/res/resaction!update.action" method="post">
				<s:hidden name="aciton" value="update" />
				<s:textfield label="餐厅名"  cssStyle="height: 35px; border-radius: 15px;width:270;" name="res.rname"
					value="%{#session.res.rname}"></s:textfield>
				<s:hidden name="res.user.uid" value="%{#session.res.user.uid}"></s:hidden>
				<s:hidden name="res.user.sex" value="%{#session.res.user.sex}"></s:hidden>
				<s:hidden name="res.user.phone" value="%{#session.res.user.phone}"></s:hidden>
				<s:hidden name="res.user.password" value="%{#session.res.user.password}"></s:hidden>
				<s:hidden name="res.user.email" value="%{#session.res.user.email}"></s:hidden>
				<s:hidden name="res.user.myright" value="%{#session.res.user.myright}"></s:hidden>
				<s:textfield label="店主" cssStyle="height:35px; border-radius: 15px;width:270;" name="res.user.uname" value="%{#session.res.user.uname}"></s:textfield>
				<s:textfield label="地址"  cssStyle="height: 35px; border-radius: 15px;width:270;" name="res.addr" value="%{#session.res.addr}"></s:textfield>
				<s:textarea label="特色食品"  cssStyle="height: 45px; border-radius: 15px; width:270;" name="res.foods"
					value="%{#session.res.foods}"></s:textarea>
				<s:textarea label="店铺介绍"  cssStyle="height: 45px; border-radius: 15px;width:270;" name="res.comments"
					value="%{#session.res.comments}"></s:textarea>
				<s:hidden name="res.status" value="%{#session.res.status}"></s:hidden>
				<td>
					<s:submit value="确定" theme="simple" ></s:submit>
				</td>
				<td>
					<s:reset value="返回" theme="simple" onclick="history.back();"/>
				</td>


			</s:form>
		</div>
	</body>
</html>
