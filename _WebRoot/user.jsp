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
    
    <title>My JSP 'user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="77%">
  <tr>
    <td><img src="image/20048182314439.gif" width="840" height="50" /></td>
  </tr>
</table>
<table width="77%">
  <tr>
    <td bgcolor="#CC99FF"><a href="shouye.jsp" target="_parent">二手市场首页</a>&gt;<a href="homepage_1.html" target="_parent">个人主页 </a></td>
  </tr>
</table>
  <center>
 <c:if test="${user == null}">
				  				<p>没有该用户</p>
				  			</c:if>
  <c:if test="${user != null}">
								<c:forEach items="${user}" var="user">
  <table width="394" height="162" border="1" cellpadding="20"><br/><br/>
  <tr><font size="5px">查询结果</font></tr>
  <tr>
    <td>用户名：</td>
    <td>
       ${user.email}     
    </td>
  </tr>
  <tr>
    <td>联系方式：</td>
    <td>
      ${user.tel}     
    </td>
  </tr>
</table>
 </c:forEach>
</c:if>
</center>
</body>
</html>
