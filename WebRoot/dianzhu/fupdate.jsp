<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.Food"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.user.entity.Type"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<style type="text/css">
.btn {
	width: 150px;
	height: 30px;
}
</style>
		<link rel="stylesheet" href="../css/cxcalendar.css">
		<script src="../js/jquery-1.9.1.js"></script>
		<script src="../js/calendar.js"></script>
		<link rel="stylesheet" href="/meituanwaimai/css/pintuer.css">
		<link rel="stylesheet" href="/meituanwaimai/css/admin.css">
		<script src="/meituanwaimai/js/jquery.js"></script>
		<script src="/meituanwaimai/js/pintuer.js"></script>


	</head>

	<body>
		<br />
		<br />
		<br />
		<br />
		<div align="center">

			<br />
			<%
				Food f = (Food) session.getAttribute("f");
			%>
			<div align="center">
				<form action="/meituanwaimai/foodaction!dzupdate.action" method="post"
					enctype="multipart/form-data">
					<input type="hidden" name="action" name="update" />
					<input type="hidden" name="f.fid" value="<%=f.getFid()%>">
					<input type="hidden" name="f.restaurant.rid" value="<%=f.getRestaurant().getRid()%>">
					<table height="450" width="500" border="0">
						<tbody>
							<tr>
								<td align="center">
									<font face="仿宋"> <font size="4"><strong>类型号</strong>
									</font> </font>
								</td>
								<td align="center">
									<!--<font face="仿宋"><input type="text" name="f.type.tid"
											style="height: 25px; border-radius: 15px;"
											value="<%=f.getType().getTid()%>"> </font>
								</td>
							-->
								<select name="f.type.tname" style="height: 25px; border-radius: 15px;width:150px;">
							<%
								List<Type> list=(List<Type>)session.getAttribute("dzxgtname");
								Iterator it=list.iterator();
								while(it.hasNext()){
								String str=(String)it.next();
							 %>
							<option type="text" value="<%=str %>"><%=str %> </option>
							<%} %>
							</select>
							</tr>
							<tr>
								<td align="center">
									<font face="仿宋" size="4"> <strong>美食名</strong> </font>
								</td>
								<td align="center">
									<font face="仿宋"><input type="text"
											style="height: 25px; border-radius: 15px;" name="f.fname"
											value="<%=f.getFname()%>"> </font>
								</td>
							</tr>
							<tr>
								<td align="center">
									<font face="仿宋" size="4"> <strong>价格</strong> </font>
								</td>
								<td align="center">
									<font face="仿宋"><input type="text"
											style="height: 25px; border-radius: 15px;" name="f.price"
											value="<%=f.getPrice()%>"> </font>
								</td>
							</tr>
							<tr>
								<td align="center">
									<font face="仿宋" size="4"> <strong>开售时间</strong> </font>
								</td>
								<td align="center">
									<%
										SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
										String d = sdf.format(f.getDate());
									%>
									<input type="text" name="f.date" style="height: 25px; border-radius: 15px;width:170px;"
										class="input_cxcalendar" value="<%=d %>">
								</td>

							</tr>
							<tr>
								<td align="center">
									<font face="仿宋"> <strong><font size="4">美图</font>
									</strong>
									</font>
								</td>
								<td align="center">
								<s:iterator value="#session.f" var="f">
								
								<img src="/meituanwaimai/img/<s:property value='#f.img'/>">
									<font face="仿宋"> <input type="file"
											style="height: 25px; border-radius: 15px;" name="upload"
											style="width: 200px; font-family: 仿宋; line-height: 50px; font-size: 14px;"> </font>
									
								</s:iterator>
								</td>
							</tr>
							<tr>
								<td align="center">
									<font face="仿宋" size="4"> <strong>美食介绍</strong> </font>
								</td>
								<td align="center">
									<font face="仿宋"> <input type="text"
											style="height: 30px; border-radius: 15px; width: 300px;"
											name="f.introduce" value="<%=f.getIntroduce()%>" height="50">
									</font>
								</td>
							</tr>
							<tr>
								<td align="center">
									<font face="仿宋" size="4"> <strong>制作秘方</strong> </font>
								</td>
								<td align="center">
									<font face="仿宋"> <input type="text"
											style="height: 30px; border-radius: 15px; width: 300px;"
											name="f.process" value="<%=f.getProcess()%>" height="50" />
									</font>
								</td>
							</tr>
						</tbody>
					</table>
					<br>
					<input type="submit" value="修改" class="btn">
					<input type="button" value="返回" onclick=
	history.back();;
class="btn">
				</form>
			</div>
			<script>
	$('.input_cxcalendar').each(function() {
		var a = new Calendar( {
			targetCls : $(this),
			type : 'yyyy-mm-dd HH:MM:SS',
			wday : 2
		}, function(val) {
			console.log(val);
		});
	});
</script>
		</div>
	</body>
</html>
