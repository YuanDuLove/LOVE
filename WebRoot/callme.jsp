<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="keywords" content="缘都婚恋,潍坊缘都婚恋,缘都婚恋服务平台">
<title>缘都婚恋服务平台</title>
<style type="text/css">
a{
	text-decoration:none;
}
body{
	background-image: url("resources/images/bg.jpg");
}
</style>
<script type="text/javascript">
	function showMemInfo(){
		window.location.href="userdata/showRegInfoAction.action";
	}
	
	function showMsgInfo(){
		window.location.href="error.jsp";
	}
</script>

</head>

<body>
<div style="width: 1350px;margin: 0 auto;">
	<div style="width: 1350px;height: 80px">
			<a href="homepage.jsp">
				<div
					style="margin-left:100px;background-image:url('resources/images/logo.png') ;width:91px;height: 80px;float: left;">
				</div> 
			</a>
			<div style="font-size: 24px;line-height: 80px;width: 800px;height: 80px;float: left;">1亿 "会员" |
				"实名婚恋网开创者"只有爱无需等待</div>
			<!-- 
			<div style="width: 195px;height: 80px;float: left;">
				<img alt="" src="resources/images/top-bg.jpg">
			</div>
			 -->
		</div>
		<div style="width: 1350px;height: 60px;background-color: #703987;position:relative;">
			<ul style="list-style: none;line-height: 60px;">
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="homepage2.jsp"
					style="color: white;text-decoration:none">主页</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="showMainAction.action"
					style="color: white;text-decoration:none">缘都空间</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="showQueryAction.action" style="color: white;">搜索</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="Matchmaker.jsp" style="color: white;">红娘服务</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="Membership.jsp" style="color: white;">会员</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="MyJsp.jsp" style="color: white;">关于我们</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="callme.jsp" style="color: white;">联系我们</a></li>
	
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="resources/images/order.png" style="line-height: 60px"
					onclick="showMsgInfo()"></li>
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="resources/images/msgicon.png" style="line-height: 60px"
					onclick="showMsgInfo()"></li>
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="resources/images/mem.png" style="line-height: 60px"
					onclick="showMemInfo()"></li>
			</ul>
			
		</div>
		<br>
		<br>
		<div
			style="width:800px;height:400px;background-color: white;border: 1px solid #cccccc; border-radius:3px;margin: 0 auto;">
			<div style="width: 120px;height: 40px;background: #FF8C69;color: white;font-family: 黑体;font-size: 18px;text-align: center;line-height: 40px;margin-left: 20px;margin-top: 20px;">
				联系我们
			</div>
			<div style="float: left;">
				<p style="font-family: Microsoft YaHei;font-size:15px;color:#5CACEE;margin-left: 25px;margin-right: 25px;line-height: 30px;">联系人：臧晓辉&nbsp;&nbsp;13573650275</p>
				<p style="font-family: Microsoft YaHei;font-size: 15px;color:#5CACEE;margin-left: 25px;margin-right: 25px;line-height: 30px;">电话：86-0536-7667933</p>
				<p style="font-family: Microsoft YaHei;font-size: 15px;color:#5CACEE;margin-left: 25px;margin-right: 25px;line-height: 30px;">邮箱地址：z_promise@163.com</p>
				<p style="font-family: Microsoft YaHei;font-size: 15px;color:#5CACEE;margin-left: 25px;margin-right: 25px;line-height: 30px;">网址：www.z-promise.com</p>
				<p style="font-family: Microsoft YaHei;font-size: 15px;color:#5CACEE;margin-left: 25px;margin-right: 25px;line-height: 30px;">地址：山东省潍坊市坊子区北海路与凤凰大街交叉路口青年创业园B做802</p>
			</div>
			<div style="float: left;">
				<img alt="" src="resources/images/qrcode.png" width="200px">
			</div>
		</div>
	</div>
		
</body>
</html>
