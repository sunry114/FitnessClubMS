<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=path %>/css/Common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="UTF-8">
    function check1()
    {
        document.form1.submit();
    }
    </script>
</head>

<body>
		<div class="NewContainer770">
			<div class="BoxHeader">
				<div class="BoxHeader-center MarginTop10">Add New Membership Cards</div>
			</div>
			<div class="Slot">
			<form action="<%=path %>/cardAdd.action" name="form1" method="post">
				<table align="left" border="0">
					<tr>
					<td align="center">Card Type:</td>
					<td><input type="text" name="cardLeixiong" id="cardLeixiong"/></td>
					</tr>
					<tr>
					<td align="center">Card Rule:</td>
					<td><textarea cols="50" rows="6" name="cardGuize"></textarea></td>
					</tr>
					<tr>
					<td align="center">Discount Policy:</td>
					<td><textarea cols="50" rows="6" name="cardYouhuizhengce"></textarea></td>
					</tr>
					<tr>
					<td colspan="2">
					<input type="submit" value="Confirm"/>
					<input  type="reset" value="Cancel"/>
					<font color="red"></font>
					</td>
					</tr>
					<tr height="30">
					</tr>
					</table>
				</form>
				<ul>
					<li><a href="" title="">&nbsp;</a> </li>
					<li><a href="" title="">&nbsp;</a> </li>
				</ul>
			</div>
        </div>
	</body>
</html>
