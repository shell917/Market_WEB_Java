<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'new_password.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
function fsubmit(){
var new_password=document.getElementById("new_password").value;
var _password=document.getElementById("_password").value;
if(new_password!=_password){
	alert("修改密码失败");window.location.href="new_password.jsp";
}
}
</script>
  </head>
  
  <body>
  <form action="http://localhost:8080/two_success/updateServlet">
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
<table width="423" height="348" border="1" cellpadding="20">
  <tr>
    <td>用户名：</td>
    <td>
      
        <input type="text" name="email" id="email"/>
        
    
    </td>
  </tr>
  <tr>
    <td><p>原始密码：</p>    </td>
    <td>
        <input type="password" name="password" id="password"/>
       
    
    </td>
  </tr>
  <tr>
    <td>新密码：</td>
    <td>
        <input type="password" name="new_password" id="new_password"/>
        
    </td>
  </tr>
  <tr>
    <td>确认密码：</td>
    <td>
        <input type="password" name="_password" id="_password"/>
        
    </td>
  </tr>
  <tr>
    <td>
        <input type="reset" name="Submit" value="重置" />
       
    </td>
    <td>
     
        <input type="submit" name="Submit2" value="提交" onclick=“fsubmit();”/>
        
   
    </td>
  </tr>
</table>
</form>
</body>
</html>
