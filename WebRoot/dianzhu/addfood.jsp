<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.Restaurant"%>
<%@page import="com.user.entity.Type"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<style type="text/css">
	
	.btn {
	width: 150px;
	height: 40px;
	align:center;
}

</style>
		<link rel="stylesheet" href="../css/cxcalendar.css">
		<script src="../js/jquery-1.9.1.js"></script>
		<script src="../js/calendar.js"></script>
	</head>

	<body>
	<br/>
	<br/>
	<br/>
		<div align="center">
			<%
				Restaurant r=(Restaurant)session.getAttribute("res");
			 %>
			<form action="/meituanwaimai/foodaction!dzupload.action" method="post"
				enctype="multipart/form-data">
				<input type="hidden" name="action" value="insert">
				
				<input type="hidden" name="f.restaurant.rid" value="<%=r.getRid() %>"/>
			 
				<table height="489" width="350" border="0">
					<tbody><tr>
							<td>
								<font face="仿宋"> <strong>类型</strong> </font>
							</td>
							<td>
								<!--<font face="仿宋"><input type="text" style="height: 25px; border-radius: 15px;" name="f.type.tid">
								</font>
							-->
							<select name="f.type.tname" style="height: 25px; border-radius: 15px;width:150px;">
							<%
								List<Type> list=(List<Type>)session.getAttribute("dztname");
								Iterator it=list.iterator();
								while(it.hasNext()){
								String str=(String)it.next();
							 %>
							<option type="text" value="<%=str %>"><%=str %> </option>
							<%} %>
							</select>
							
							</td>
						</tr>
						<tr>
							<td>
								<font face="仿宋"> <strong>美食名</strong> </font>
							</td>
							<td>
								<font face="仿宋"><input type="text" style="height: 25px; border-radius: 15px;" name="f.fname">
								</font>
							</td>
						</tr>
						<tr>
							<td>
								<font face="仿宋"> <strong>价格</strong> </font>
							</td>
							<td>
								<font face="仿宋"><input type="text" style="height: 25px; border-radius: 15px;" name="f.price">
								</font>
							</td>
						</tr>
						<tr>
							<td>
								<font face="仿宋"> <strong>开售时间</strong> </font>
							</td>
							<td>
								<font face="仿宋"><input type="text" style="height: 25px; border-radius: 15px;" name="f.date"
										class="input_cxcalendar"> </font>
							</td>

						</tr>
						<tr>
							<td>
								<font face="仿宋"> <strong>美图</strong> </font>
							</td>
							<td>
								<font face="仿宋"> <input type="file" style="height: 25px; border-radius: 15px;" name="upload"
										style="width: 200px; font-family: 仿宋; line-height: 50px; font-size: 14px;">
								</font>
								<br>
							</td>
						</tr>
						<tr>
							<td>
								<font face="仿宋"> <strong>美食介绍</strong> </font>
							</td>
							<td>
								<font face="仿宋"> <textarea style="height: 25px; border-radius: 15px;" rows="1" cols="30"
										name="f.introduce"></textarea> </font>
							</td>
						</tr>
						<tr>
							<td>
								<font face="仿宋"> <strong>制作秘方</strong> </font>
							</td>
							<td>
								<font face="仿宋"> <textarea style="height: 25px; border-radius: 15px;" rows="1" cols="30"
										name="f.process"></textarea> </font>
							</td>
						</tr>
					</tbody>
				</table>
				<input type="submit" value="添加" class="btn">
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
	</body>

</html>
