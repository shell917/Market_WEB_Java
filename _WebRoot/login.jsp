<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function flogin()
	{
	 var email=document.getElementById("email").value;
	  var password=document.getElementById("password").value;
	  if(!email||!password){
	  alert("请完善信息");
	   window.location.href="login.jsp";
	  }
	}
	</script>
<style type="text/css">
<!--
body {
	background-image: url(image\background.jpg);
}
.STYLE1 {font-size: 36px;}
font{font-size:17px;}
-->
</style></head>

<body>
<center>
<form action="${pageContext.request.contextPath}/loginServlet">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="STYLE1">校园二手交易系统</p>
<p>&nbsp;</p>
<table width="269" height="194" border=0 align="center" cellpadding="0" cellspacing="0">
<tr><td width="76" height="63" align="left"><font>用户名：</font></td>
<td width="193" align="left"><input type="text" value="" name="email" id="name" style="height: 30px;"/></td></tr>
<tr><td height="60" align="left"><font>密码：</font></td>
<td align="left"><input type="password" name="password" id="password" style="height: 30px;"/></td></tr>
<tr>
  <td height="64" colspan="2" align="left">
    
      <input name="submit" type="submit" value="登     陆" style="height:35px;width:83%;text-align:center; background-color:#FFFFCC;font-size:30px; font-family:'华文楷体'" onclick="flogin();"/>
    </tr>
</table>
</form>
</center>
</body>
</html>
