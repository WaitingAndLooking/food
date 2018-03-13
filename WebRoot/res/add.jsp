<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.User"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<style type="text/css">
	.btn {
	width: 150px;
	height: 30px;
}
	</style>


	</head>

	<body>
		<br/>
		<br/>
		<br/>
		<br/>
		<br/>
		<div align="center">

			<form action="/meituanwaimai/res/resaction!add.action" method="post">
				<input type="hidden" name="action" value="insert" />
				<br>
				<font face="仿宋"><font size="4"><strong>店&nbsp;&nbsp;&nbsp; 主</strong></font>
				</font>
				<input type="text" style="height: 25px; border-radius: 15px;"
					name="res.user.uname">
				<br>
				<br>
				<font face="仿宋" size="4"><strong>餐 厅 名 </strong>
				</font>
				<input type="text" style="height: 25px; border-radius: 15px;"
					name="res.rname" />
				<br>
				<br>
				<strong><font face="仿宋" size="4">地&nbsp;&nbsp; 
						&nbsp; 址</font>
				</strong>
				<input type="text" style="height: 25px; border-radius: 15px;"
					name="res.addr" />
				<br>
				<br>
				<font face="仿宋" size="4"><strong>特色食品&nbsp;</strong>
				</font>
				<input type="text" style="height: 25px; border-radius: 15px;"
					name="res.foods" />
				<br>
				<br>
				<font face="仿宋" size="4"><strong>介&nbsp;&nbsp;&nbsp;&nbsp;绍</strong>
				</font>
				<input type="text" style="height: 25px; border-radius: 15px;"
					name="res.comments" />
				<br>
				<br>
				<font face="仿宋" size="4"><strong>营业状态</strong>
				</font>
				<font face="仿宋"> <input type="radio" name="res.status"
						value="1"> </font><font face="仿宋" size="4"> <strong>营业</strong> </font>
				<input type="radio" name="res.status" value="2" />
				<font face="仿宋" size="4"><strong>未营业</strong>
				</font>
				<br />
				<br />
				<input type="submit" value="确定" class="btn">
			</form>
		</div>
	</body>
</html>
