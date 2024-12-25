<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<style type="text/css">
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}
a:link {font-size:12px; text-decoration:none; color:#344b50;}
a:visited {font-size:12px; text-decoration:none; color:#344b50;}
a:hover{font-size:12px; text-decoration:none; color:#FF0000;}
</style>
<script charset="UTF-8">
var  highlightcolor='#d5f4fe';
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>

	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="30">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="24" bgcolor="#353c44">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="6%" height="19" valign="bottom">
														<div align="center">
															<img src="images/tb.gif" width="14" height="14" />
														</div>
													</td>
													<td width="94%" valign="bottom">
														<span class="STYLE1">工作人員基本信息列表</span>
													</td>
												</tr>
											</table>
										</td>
										<td>
											<div align="right">
												<span class="STYLE1"> <img src="images/add.gif" width="10" height="10" /><a style="color: white;" href="<%=path %>/admin/user/userAdd.jsp"> 添加 &nbsp;</a></span>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()" onmouseout="changeback()">
						<tr>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">用戶名</span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">用戶類型</span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">住址</span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">性別</span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">聯係方式</span>
								</div>
							</td>
							
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">基本操作</span>
								</div>
							</td>
						</tr>
                        <s:iterator value="#request.userList" id="user">
                        <tr>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><s:property value="#user.userName"/></span>
								</div>
							</td>
							
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10">
									<s:if test="#user.userType==0">
									系統管理員
									</s:if>
									<s:if test="#user.userType==1">
									教練
									</s:if>
									<s:if test="#user.userType==2">
									前臺服務人員
									</s:if>
									<s:if test="#user.userType==3">
									銷售人員
									</s:if>
									<s:if test="#user.userType==4">
									保潔人員
									</s:if>
                                    </span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><s:property value="#user.userAddress"/></span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><s:property value="#user.userSex"/></span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><s:property value="#user.userTel"/></span>
								</div>
							</td>
							
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><img width="10" height="10" src="images/del.gif" />&nbsp;&nbsp;&nbsp;<a href="<%=path %>/delUser.action?userId=<s:property value="#user.userId"/>">刪除</a></span>
								</div>
							</td>
						</tr>
                        </s:iterator>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
