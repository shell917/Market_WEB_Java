<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查询结果</title>
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
		</script>
		<style type="text/css">
		</style>
  </head>
  
  <body>

   <table width="640" border="1">
      <tr bgcolor="#333333">
        <td colspan="2" bgcolor="#CC99FF"><span class="STYLE1">产品搜索结果</span></td>
      </tr>
    </table><br /><br />
   <c:if test="${goods == null}">
				  				没有该用户
				  			</c:if>
					      	<c:if test="${goods != null}">
								<c:forEach items="${goods}" var="good">
        
     
    
    <table width="640" border="1">
      <tr bgcolor="#333333">
        <td colspan="3" bgcolor="#CC99FF">&nbsp;</td>
      </tr>
          <tr>
        <td width="160" rowspan="4"><center><iframe></iframe></center></td>
        <td width="119" height="13">商品名称：</td>
        <td width="339">${good.goodsname}</td>
      </tr>
      <tr>
        <td height="14">商品简介：
          <label></label></td>
        <td height="14">${good.intro}</td>
      </tr>
      <tr>
        <td>商品参考价格：</td>
        <td>${good.price}</td>
      </tr>
      <tr>
        <td>发布商家：</td>
        <td>${good.fuser}</td>
      </tr>
    </table>
        
        
         </c:forEach>
</c:if>
        
        
      

									
									
</body>
</html>
