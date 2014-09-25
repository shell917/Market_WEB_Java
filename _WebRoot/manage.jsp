<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>商品管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
<!--
.STYLE3 {
	font-size: 18px;
	font-weight: bold;
}
.STYLE4 {color: #CC00FF}
.STYLE6 {color: #CC33FF}
.STYLE11 {font-size: 18px}
.STYLE12 {color: #000000}
.STYLE13 {font-size: 16px}
-->
</style>


<script language="javascript">


function alerting_delete()
{
alert("  删除成功！ ");
}
function alerting_modify()
{
alert("  修改成功！ ")
}


</script>
</head>

<body>
<p>&nbsp;</p>
<table width="65%" cellpadding="13" bordercolor="#FF00FF">
  <tr>
    <td colspan="3"><img src="image/20048182314439.gif" alt="logo" width="623" height="50" /></td>
  </tr>
  <tr>
    <td colspan="3"><span class="STYLE3"><a href="index_1.html" target="_parent" class="STYLE4">二手市场首页</a>&gt;<a href="homepage_1.html" target="_parent"><span class="STYLE6">个人主页<span class="STYLE12">&gt;</span></span></a></span><span class="STYLE11">商品管理</span></td>
  </tr>
  <c:if test="${goods != null}">
								<c:forEach items="${goods}" var="good">
  <tr>
  
    <td width="17%" bordercolor="#FF00FF"><span class="STYLE13">商品名称：</span></td>
    <td width="65%" bordercolor="#FF00FF">${good.goodsname}</td>
    <td width="18%" bordercolor="#FF00FF"><span class="STYLE13"><a href="homepage_" onclick="alerting_delete()" ">删除</a>/<a href="#" onclick="alerting_modify()" ">修改</a></span></td>
   
  </tr>
 </c:forEach>
</c:if>
</table>
</body>
</html>
