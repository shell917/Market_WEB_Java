<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
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
body {
	background-image: url(image\background.jpg);
}
font{font-size:17px;}
.STYLE1 {font-size: 36px;}
-->
</style>
	
	

<script type="text/javascript">
function femail()
{
  var youxiang=document.getElementById("email").value;
	if(youxiang.match("^\\w+@\\w+.\\w*$")&&youxiang!=""){
		document.getElementById("_email").innerHTML="";
	}
	else{
		document.getElementById("_email").innerHTML="请输入正确的邮箱";
	}
}
function fpassword()
{
  var password=document.getElementById("password").value;
 if(password.length<6){
   document.getElementById("_password").innerHTML="密码太短了，请重新输入";
 }
  else{
   document.getElementById("_password").innerHTML="";
  }
}
function frpassword(){
	var password=document.getElementById("password").value;
	var password1=document.getElementById("rpassword").value;
	if(password==password1){
		document.getElementById("_rpassword").innerHTML="";
	}
	else{
		document.getElementById("_rpassword").innerHTML="重复密码输入错误";
	}
}
function fname()
{
  var name=document.getElementById("name").value;
 if(name==""){
   document.getElementById("_name").innerHTML="请输入真实姓名";
 }
  else{
   document.getElementById("_name").innerHTML="";
}
}
function ftel()
{
  var tel=document.getElementById("tel").value;
 if(tel==""){
   document.getElementById("_tel").innerHTML="请输入联系方式";
 }
  else{
   document.getElementById("_tel").innerHTML="";
}
}
 
function login()
{
  var s1=document.getElementById("_email").value;
  var s2=document.getElementById("_password").value;
  var s3=document.getElementById("_rpassword").value;
  var s4=document.getElementById("_tel").value;
  var s5=document.getElementById("_name").value;
 if(!s1||!s2||!s3||!s4||!s5)
  {alert("请完善信息!"); window.location.href="zhuce.jsp";}
}

</script>

  </head>
  
  <body>
  <center>
  <form action="http://localhost:8080/two_success/zhuceServlet">
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="STYLE1">注册系统会员</p>
<p>&nbsp;</p>
  <table width="636" border="0" cellpadding="15" cellspacing="0">
    <tr>
      <td width="91" ><font>用户名：</font></td>
      <td width="210">
          <input type="text" id="email" name="email"  onblur="femail();"/>  </td>
	  <td width="158"><span id="_email" style="color:red"></span></td>
    </tr>
    <tr>
      <td><font>密码：</font></td>
      <td>
          <input type="password" id="password" name="password" onblur="fpassword();"/>
     </td>
	  <td><span id="_password" style="color:red"></span></td>
    </tr>
    <tr>
      <td><font>确认密码：</font></td>
      <td>
          <input type="password" id="rpassword" name="rpassword" onblur="frpassword();"/>    
	  </td>
	  <td><span id="_rpassword" style="color:red"></span></td>
    </tr>
    <tr>
      <td><font>真实姓名：</font></td>
      <td>
          <input type="text" id="name" name="name" onblur="fname();"/>   
	  </td>
	  <td><span id="_name" style="color:red"></span></td>
	  </tr>
    <tr>
      <td><font>联系方式：</font></td>
      <td>
          <input type="text" id="tel" name="tel" onblur="ftel();"/>   
	  </td>
	  <td><span id="_tel" style="color:red"></span></td>
    </tr> 
    <tr>


      <td><font>地址：</font></td>
      <td colspan="2">
        <select name="select">
		<option selected>请选择省</option>
		<option>山西省</option>
		<option>陕西省</option>
		<option>山东省</option>
        </select>
        <select name="select2">
		<option selected>请选择市</option>
		<option>太原市</option>
		<option>临汾市</option>
		<option>运城市</option>
        </select>
        <select name="select3">
		<option selected>请选择县</option>
        </select></td>
    </tr>
    <tr>
      <td>
      <input name="submit2" type="reset" value="重     置" style="height:35px;width:83%;text-align:center; background-color:#FFFFCC;font-size:30px; font-family:'华文楷体'"/>
        
      </td>
      <td>
      <input name="submit" type="submit" value="提     交" style="height:35px;width:83%;text-align:center; background-color:#FFFFCC;font-size:30px; font-family:'华文楷体'" onclick="login();"/>
       
      </td>
    </tr>
  </table>

 </form>
 </center>
  </body>
</html>
