<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>校园二手交易</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->







<script type="text/javascript">
var arr=new Array();
arr[0]="image/12.jpg";
arr[1]="image/13.jpg";
arr[2]="image/14.jpg";
arr[3]="image/15.jpg";
setInterval("changeimg()",1000)
var currentIndex=0;
function changeimg()
{
	if(currentIndex==arr.length-1)
	{
		currentIndex=0;
	}
	else
		currentIndex+=1;
	document.getElementById("obj").src=arr[currentIndex];
}
</script>





<style type="text/css">
<!--
.STYLE2 {font-size: 18px}
.STYLE4 {font-size: 14}
.STYLE5 {font-size: 14px}
.STYLE6 {font-size: 12px}
.STYLE7 {font-size: 12}
-->
</style>
</head>

<body>
<table width="830" height="1090" border="1" align="center">
  <tr background="image/homepage_wps_clip_image-11298.png">
    <td height="126" colspan="5" background="image/homepage_wps_clip_image-11298.png" bgcolor="#9999FF">&nbsp;</td>
    <td height="126" background="image/homepage_wps_clip_image-11298.png" bgcolor="#9999FF">
    <form action="http://localhost:8080/two_success/queryServlet">
<input type="text" value="请输入要搜索的产品" name="query">
      <input type="submit" value="搜索"/>
    </form></td>
  </tr>
  
  <tr>
    <td rowspan="2"><p><a href="#">二手电脑</a></p>
      <p><a href="#">二手手机</a></p>
      <p><a href="#">二手书籍</a></p>
    <p><a href="#">二手家电</a></p></td>
    <td colspan="4" rowspan="2"><img src="image/11.jpg" width="508" height="339" id="obj"/></td>
    <td width="192" height="148"><a href="zhuce.jsp">
    <img src="image/logon.jpg" alt="" width="156" height="66" /></a></td>
  </tr>
  <tr>
    <td height="128"><a href="login.jsp">
    <img src="image/login.jpg" alt="" width="156" height="68" /></a></td>
  </tr>
  <tr>
    <td height="25" colspan="5">热卖</td>
    <td rowspan="2"><span class="STYLE2">推荐</span></td>
  </tr>
  <tr>
    <td height="25" colspan="5"><p ><img src="image/index_1_wps_clip_image-10919.png" alt="logo" width="174" height="33"></p></td>
  </tr>
  <tr>
    <td height="11"><img  src="image/apple1.jpg" width="160" height="120" /></td>
    <td height="11"><img src="image/apple2.jpg" width="160" height="120" /></td>
    <td width="160"><a href="detail_3.html"><img src="image/apple3.jpg" width="151" height="120" /></a></td>
    <td height="11" colspan="2"><img src="image/apple4.jpg" width="160" height="120" /></td>
    <td><a href="detail_tuijian.html"><img src="image/apple5.jpg" width="160" height="120" /></a></td>
  </tr>
  <tr>
    <td height="12"><a href="Goods_detail.html">苹果iPad mini 16G黑色 国行 全新拆封未使用</a></td>
    <td height="12"><a href="Goods_detail.html">苹果5 iPhone5 黑色 国行全新刚激活 全国联保一年</a></td>
    <td><a href="detail_3.html" class="STYLE4">转让一部98成新黑色iphone4,,配件都齐   1600</a></td>
    <td height="12" colspan="2"><a href="Goods_detail.html">苹果iPhone4S 16G白色 国行 在保全国联保有发票</a></td>
    <td background="Goods_detail.html"><span class="STYLE5"><a href="detail_tuijian.html">16G越狱IPHONE4S 3500元</a></span> </td>
  </tr>
  <tr>
    <td height="12" colspan="5"><p><img src="image/index_1_wps_clip_image-13832.png" alt="logo" width="178" height="32"></p></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="160" height="5"><img src="image/moblie1.jpg" width="160" height="120" /></td>
    <td width="160"><img src="image/molie2.jpg" width="160" height="120" /></td>
    <td height="5"><img src="image/moblie3.jpg" width="160" height="120" /></td>
    <td height="5" colspan="2"><img src="image/moblie4.jpg" width="160" height="120" /></td>
    <td><img src="image/moblie5.jpg" width="160" height="115" /></td>
  </tr>
  <tr>
    <td height="5"><a href="Goods_detail.html">三星N5100 note8.0电话版平板电脑 国行9.9成新</a></td>
    <td>
          <a href="Goods_detail.html">三星noto2 N7102 32g 联通版自用手机出售</a>

    <td height="5"><div><a href="Goods_detail.html">2000元转让9成新的三星S3 i9308</a></div></td>
    <td height="5" colspan="2"><a href="Goods_detail.html">个人诚心出售自用三星S4,GT-i9500 3600元</a></td>
    <td><a href="Goods_detail.html"><span class="STYLE5">国行 HTC ONE联通双卡双待 3000元</span></a> </td>
  </tr>
  <tr>
    <td height="12" colspan="5"><p ><img src="image/index_1_wps_clip_image-12869.png" alt="logo" width="177" height="34"></p></td>
    <td rowspan="2" bordercolor="0">[书籍文具]</td>
  </tr>
  <tr>
    <td height="5" rowspan="7"><img src="image/xiangji1.jpg" width="160" height="120" /></td>
    <td height="5" rowspan="7"><img src="image/xiangji2.jpg" width="160" height="120" /></td>
    <td height="5" colspan="2" rowspan="7"><img src="image/xiangji3.jpg" width="160" height="106" /></td>
    <td width="125" height="5" rowspan="7"><img src="image/xiangji4.jpg" width="160" height="108" /></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><a href="Goods_detail.html" class="STYLE7">考研书+日语书贱卖了</a></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><a href="Goods_detail.html" onclick="atarget(this)">求购牛津词典一本。</a> </td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
  </tr>
  <tr>
    <td height="17"> <a href="Goods_detail.html" onclick="atarget(this)">5折考试书店 自考书店</a> </td>
  </tr>
  <tr>
    <td height="5"><span class="STYLE6"><a href="Goods_detail.html">三星ST66 数码相机 1610万像素 5倍光变 8G卡</a></span> </td>
    <td height="5"><a href="Goods_detail.html" class="STYLE7">尼康D90 18-105镜头套机，九成新，3600元出</a> </td>
    <td height="5" colspan="2"><a href="Goods_detail.html">港行佳能广角EF-S 10-22mm附带</a> </td>
    <td width="125" height="5"><a href="Goods_detail.html">85新 佳能70-200 2.8</a> </td>
    <td bordercolor="0">&nbsp;</td>
  </tr>
</table>
</body>
</html>