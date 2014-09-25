<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>发布页面</title>
<style type="text/css">
<!--
.STYLE1 {
	font-size: 16px;
	font-weight: bold;
}
.STYLE2 {font-size: 18px}
-->
</style>

</head>

<body>
<form action="${pageContext.request.contextPath}/add_goodsServlet">
<table width="77%">
  <tr>
    <td><img src="image/20048182314439.gif" width="840" height="50" /></td>
  </tr>
</table>
<table width="78%">
  <tr>
    <td bgcolor="#CC99FF"><span class="STYLE2"><a href="index_1.html" target="_parent">二手市场首页</a>&gt;<a href="homepage_1.html" target="_parent">个人主页</a>>发布信息</span></td>
  </tr>
</table>
<table width="78%" height="366" border="0.5" cellpadding="13" bordercolor="#FF00FF">
  <tr>
    <td width="18%" bordercolor="#FF00FF" ><span class="STYLE1">商 品 分 类： </span></td>
    <td width="82%" bordercolor="#FF00FF" >
      <input type="text" name="fenlei" />
  </td>
  </tr>
  <tr>
    <td bordercolor="#FF00FF" class="STYLE1">交 易 类 型：</td>
    <td bordercolor="#FF00FF" >
      <input type="checkbox" name="checkbox" value="checkbox" />
      
    出售 
   
    <input type="checkbox" name="checkbox2" value="checkbox" />
    
    收购
    </td>
  </tr>
  <tr>
    <td bordercolor="#FF00FF"  class="STYLE1">信 息 标 题：</td>
    <td bordercolor="#FF00FF" >
        <input type="text" name="goodsname" />
       
      </td>
  </tr>
  <tr>
    <td bordercolor="#FF00FF"  class="STYLE1">参 考 价 格：</td>
    <td bordercolor="#FF00FF" >
        <input type="text" name="price" />
        
        </td>
  </tr>
  <tr>
    <td align="left" bordercolor="#FF00FF"  class="STYLE1">地 址：</td>
    <td bordercolor="#FF00FF" ">
        <input type="text" name="textfield5" />
          </td>
  </tr>
  <tr>
    <td bordercolor="#FF00FF"  class="STYLE1">详 细 描 述：</td>
    <td bordercolor="#FF00FF" >
        <textarea name="xx" cols="25" rows="5" width="200px" height="180px">输入详细描述：</textarea>
            </td>
  </tr>
  <tr>
    <td bordercolor="#FF00FF"  class="STYLE1">联 系 人：</td>
    <td bordercolor="#FF00FF" >
        <input type="text" name="fuser" />
         </td>
  </tr>
  <tr>
    <td bordercolor="#FF00FF"  class="STYLE1">联 系 电 话：</td>
    <td bordercolor="#FF00FF" >
        <input type="text" name="tel" />
            </td>
  </tr>
  <tr>
    <td bordercolor="#FF00FF"  class="STYLE1">电 子 邮 件：</td>
    <td bordercolor="#FF00FF" >
        <input type="text" name="textfield8" />
           </td>
  </tr>
  <tr>
    <td colspan="2" align="right" bordercolor="#FF00FF" class="STYLE1"><form id="form5" name="form5" method="post" action="">
     
        <input name="Submit" type="submit" class="STYLE1" value="确认"/>
        
    </form>    </td>
  </tr>
</table>
<p>&nbsp;</p>
</form>
</body>


</html>
