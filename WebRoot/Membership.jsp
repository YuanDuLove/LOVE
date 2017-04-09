<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="keywords" content="缘都婚恋,潍坊缘都婚恋,缘都婚恋服务平台">
<title>缘都婚恋服务平台</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css/membershipCss.css" />
<style type="text/css">

a{
	text-decoration:none;
}
body{
	background:white;
}
</style>
<!--真心会员价格点击事件  -->
<script type="text/javascript">
	function showRed1() {
		document.getElementById("no1").className = "MembershipServiceDivWhite";
		document.getElementById("no2").className = "MembershipServiceDivRed";
		document.getElementById("no3").className = "MembershipServiceDivRed";
	}
	function showRed2() {
		document.getElementById("no2").className = "MembershipServiceDivWhite";
		document.getElementById("no1").className = "MembershipServiceDivRed";
		document.getElementById("no3").className = "MembershipServiceDivRed";
	}
	function showRed3() {
		document.getElementById("no3").className = "MembershipServiceDivWhite";
		document.getElementById("no2").className = "MembershipServiceDivRed";
		document.getElementById("no1").className = "MembershipServiceDivRed";
	}
	function hiddenRed1() {
		document.getElementById("no1").className = "MembershipServiceDivRed";
	}
	function hiddenRed2() {
		document.getElementById("no2").className = "MembershipServiceDivRed";
	}
	function hiddenRed3() {
		document.getElementById("no3").className = "MembershipServiceDivRed";
	}
	function showMemInfo() {
		window.location.href = "userdata/showRegInfoAction.action";
	}
	function showMsgInfo(){
		window.location.href="showMsgAction.action";
	}
	function pay(){
		window.location.href="pay.jsp";
	}
</script>
</head>
<body>
	<div style="width: 1350px;margin: 0 auto;">
		<div style="width: 1350px;height: 80px">
			<a href="homepage.jsp">
				<div
					style="margin-left:100px;background-image:url('resources/images/logo.png') ;width:442px;height: 85px;float: left;">
				</div> </a>
			<!-- 
			<div style="width: 195px;height: 80px;float: left;">
				<img alt="" src="resources/images/top-bg.jpg">
			</div>
			 -->
		</div>
		<div
			style="width: 1350px;height: 40px;background-color: #D41E5B;position:relative;">
			<ul style="list-style: none;line-height: 40px;">
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="homepage2.jsp"
					style="color: white;text-decoration:none;"><img
					alt="" src="resources/images/homeoff.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="showMainAction.action"
					style="color: white;text-decoration:none"><img
					alt="" src="resources/images/zone.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="showQueryAction.action" style="color: white;"><img
					alt="" src="resources/images/search.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="Matchmaker.jsp" style="color: white;"><img
					alt="" src="resources/images/match.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="Membership.jsp" style="color: white;"><img
					alt="" src="resources/images/vipoff.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="MyJsp.jsp" style="color: white;"><img
					alt="" src="resources/images/about.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="callme.jsp" style="color: white;"><img
					alt="" src="resources/images/call.png" style="line-height: 40px;height: 40px"></a></li>
	
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="resources/images/order.png" style="line-height: 40px;height: 40px"
					onclick="showMsgInfo()"></li>
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="resources/images/msgicon.png" style="line-height: 40px;height: 40px"
					onclick="showMsgInfo()"></li>
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="resources/images/mem.png" style="line-height: 40px;height: 40px"
					onclick="showMemInfo()"></li>
			</ul>
		</div>
	
		<div style="width: 1350px;height: 800px;margin: 0 auto;background: url('resources/images/bgimg10.jpg');">
		</div>
		<div style="width: 80%;height: 60px;margin: 0 auto;margin-top:25px;background: url('resources/images/bgimg11.png') no-repeat;">
		</div>
		<div style="width: 1350px;height: 370px;margin: 0 auto;background: url('resources/images/bgimg12.png') no-repeat;">
			<div style="width: 114px;height: 170px;float: left;margin-left:70px;margin-top: 180px;cursor: pointer;" onclick="pay()">
				<div style="width: 68px;height: 40px;margin:0 auto;;background: url('resources/images/bgimg13.png') no-repeat;"></div>
				<div style="width: 114px;height: 130px;margin:0 auto;;background: url('resources/images/bgimg14.png') no-repeat;"></div>
			</div>
			<div style="width: 114px;height: 210px;float: left;margin-left:70px;margin-top: 140px;cursor: pointer;" onclick="pay()">
				<div style="width: 88px;height: 60px;margin:0 auto;background: url('resources/images/bgimg15.png') no-repeat;"></div>
				<div style="width: 114px;height: 150px;margin:0 auto;;background: url('resources/images/bgimg16.png') no-repeat;"></div>
			</div>
			<div style="width: 143px;height: 170px;float: left;margin-left:70px;margin-top: 120px;cursor: pointer;" onclick="pay()">
				<div style="width: 143px;height: 65px;margin:0 auto;background: url('resources/images/bgimg17.png') no-repeat;"></div>
				<div style="width: 114px;height: 165px;margin:0 auto;;background: url('resources/images/bgimg18.png') no-repeat;"></div>
			</div>
			<div style="width: 156px;height: 270px;float: left;margin-left:70px;margin-top: 80px;cursor: pointer;" onclick="pay()">
				<div style="width: 156px;height: 77px;margin:0 auto;background: url('resources/images/bgimg19.png') no-repeat;"></div>
				<div style="width: 114px;height: 190px;margin:0 auto;;background: url('resources/images/bgimg20.png') no-repeat;"></div>
			</div>
			<div style="width: 156px;height: 280px;float: left;margin-left:70px;margin-top: 70px;cursor: pointer;" onclick="pay()">
				<div style="width: 156px;height: 70px;margin:0 auto;background: url('resources/images/bgimg21.png') no-repeat;"></div>
				<div style="width: 114px;height: 210px;margin:0 auto;;background: url('resources/images/bgimg22.png') no-repeat;"></div>
			</div>
			<div style="width: 145px;height: 310px;float: left;margin-left:70px;margin-top: 40px;cursor: pointer;" onclick="pay()">
				<div style="width: 145px;height: 80px;margin:0 auto;background: url('resources/images/bgimg23.png') no-repeat;"></div>
				<div style="width: 114px;height: 230px;margin:0 auto;;background: url('resources/images/bgimg24.png') no-repeat;"></div>
			</div>
		
		</div>
		
		
		
		
		
		<!-- 真新会员页面样式div -->
		<div style=" width: 100%; height: 1000px;">
			<!--立即开通真心会员页面  -->
			<div
				style="float: left;margin-left:100px; width: 800px;height: 1000px; ">
				<div style="width: 100%;height: 63px;margin: 0 auto;margin-top:20px;background: url('resources/images/bgimg25.png') no-repeat;"></div>
				<div
					style="width: 100%;height: 800px;background:white;margin-top: 20px;">
					<table>
						<thead>
							<tr>
								<td>特权名称</td>
								<td>特权使用率</td>
							</tr>
						</thead>
						<tr>
							<td>免费看信发信</td>
							<td>100%</td>
						</tr>
						<tr>
							<td>珍爱网APP特权大礼包 查看谁对我心动；私密通话；语音邮件</td>
							<td>92%</td>
						</tr>
						<tr>
							<td>线上产品全场8折</td>
							<td>81%</td>
						</tr>
						<tr>
							<td>实时在线聊天</td>
							<td>95%</td>
						</tr>
						<tr>
							<td>全站展示推荐</td>
							<td>97%</td>
						</tr>
						<tr>
							<td>隐身浏览</td>
							<td>46%</td>
						</tr>
						<tr>
							<td>查看身份证信息</td>
							<td>86%</td>
						</tr>
						<tr>
							<td>心仪人上线提醒</td>
							<td>95%</td>
						</tr>
						<tr>
							<td>尊贵身份标识</td>
							<td>100%</td>
						</tr>
						<tr>
							<td>会员专属装扮</td>
							<td>64%</td>
						</tr>
						<tr>
							<td>上传更多照片</td>
							<td>71%</td>
						</tr>
						<tr>
							<td>更高诚信值</td>
							<td>100%</td>
						</tr>
						<tr>
							<td>无限制浏览照片</td>
							<td>82%</td>
						</tr>
						<tr>
							<td>获取情敌动向</td>
							<td>85%</td>
						</tr>
						<tr>
							<td>隐私保护</td>
							<td>57%</td>
						</tr>
						<tr>
							<td>送礼短信提醒</td>
							<td>83%</td>
						</tr>
						<tr>
							<td>每日专属魅力值</td>
							<td>98%</td>
						</tr>
						<tr>
							<td colspan="2">合计：19项特权，总有一项帮到您！</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;"><input
								type="button"
								style="background: #FF6347;border: 1px;border-radius:3px;width: 200px;height: 40px;color: white;"
								value="立即开通" onclick="pay()"> <font style="color: #FF6347">399元/年</font>
							</td>
						</tr>
					</table>
	
				</div>
			</div>
			<div style="float: left;margin-left:20px; width: 350px;height:730px;margin-top: 20px;">
				<div
					style="width: 350px;">
					<div class="double"></div>
					<div class="doubleImg">
						<div
							style="float: left;width:110px;height: 110px;border: 3px solid orange;border-radius:5px;">
							<img width="110px" height="110px" alt="" src="resources/images/11.png">
						</div>
						<div
							style="float: left;width:110px;height: 110px;border: 3px solid orange;border-radius:5px;">
							<img width="110px" height="110px" alt="" src="resources/images/2.png">
						</div>
						<div
							style="float: left;width:110px;height: 110px;border: 3px solid orange;border-radius:5px;">
							<img width="110px" height="110px" alt="" src="resources/images/3.png">
						</div>
						<div
							style="float: left;width:110px;height: 110px;border: 3px solid orange;border-radius:5px;">
							<img width="110px" height="110px" alt="" src="resources/images/4.png">
						</div>
						<div
							style="float: left;width:116px;height: 116px;">
							<img width="116px" height="116px" alt="" src="resources/images/5.png">
						</div>
						<div
							style="float: left;width:110px;height: 110px;border: 3px solid orange;border-radius:5px;">
							<img width="110px" height="110px" alt="" src="resources/images/6.png">
						</div>
						<div
							style="float: left;width:110px;height: 110px;border: 3px solid orange;border-radius:5px;">
							<img width="110px" height="110px" alt="" src="resources/images/7.png">
						</div>
						<div
							style="float: left;width:110px;height: 110px;border: 3px solid orange;border-radius:5px;">
							<img width="110px" height="110px" alt="" src="resources/images/8.png">
						</div>
						<div
							style="float: left;width:110px;height: 110px;border: 3px solid orange;border-radius:5px;">
							<img width="110px" height="110px" alt="" src="resources/images/9.png">
						</div>
					</div>
				</div>
			</div>
	
		</div>
		<div style="width: 1350px;height: 270px;margin: 0 auto;background: #ffbdc5">
			<div style="width: 100%;height: 120;text-align: center;">
				<br>
				<font style="color: #ff6347;font-size: 30px;">缘都牵线</font><br>
				<font style="color: #ff6347;font-size: 20px;">专业红娘一对一、全程跟踪服务<br>
				缘都婚恋</font>
			</div>
			<div style="width: 60%;height: 130px;margin: 0 auto;">
				<div style="width: 113px;height: 130px;float:left;background: url('resources/images/bgimg28.png');"></div>
				<div style="width: 113px;height: 130px;margin-left:100px;float:left;background: url('resources/images/bgimg29.png');"></div>
				<div style="width: 113px;height: 130px;margin-left:100px;float:left;background: url('resources/images/bgimg30.png');"></div>
				<div style="width: 113px;height: 130px;margin-left:100px;float:left;background: url('resources/images/bgimg31.png');"></div>
			</div>
		</div>
	</div>
</body>
</html>
