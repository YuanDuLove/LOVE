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
	background-image: url("resources/images/bg.jpg");
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
	
		<div class="Memberservice">
			<div class="za_hy_01" style="cursor: pointer;"
				onclick="sumitPaymentOrder(1,290);return false;"></div>
			<div class="gr_no_Box"></div>
		</div>
		<!-- 真新会员页面样式div -->
		<div style=" width: 100%; height: 1600px;">
			<!--立即开通真心会员页面  -->
			<div
				style="float: left;margin-left:100px; width: 800px;height: 1500px; ">
				<div class="Membership" style="width: 800px;height: 200px;"></div>
				<div style="margin-top:50px;width: 800px;height: 300px;">
					<div id="no1" onmouseover="showRed1()" onmouseout="hiddenRed1()"
						class="MembershipServiceDivRed"
						style="width: 260px;height: 300px;float: left;">
						<br> <br>
						<hr>
						<font style="font-size: 26px;font-family: 黑体">真心会员12个月</font><br>
						<br> <font style="font-size: 30px;font-family: 黑体"><strong>1.1元</strong>/天</font><br>
						<br>
						<hr>
						超值会员价<font style="font-size: 26px;font-family: 黑体">399</font>元<br>
						<br> <input type="button" name="year" value="立即开通" onclick=""
							style="width: 150px;height: 40px;background: white;font-size:16px;font-family:黑体;color: red;border: 1px;border-radius:5px;cursor: pointer;">
					</div>
					<div id="no2" onmouseover="showRed2()" onmouseout="hiddenRed2()"
						class="MembershipServiceDivRed"
						style="width: 260px;height: 300px;float: left;margin-left: 10px;">
						<br> <br>
						<hr>
						<font style="font-size: 26px;">真心会员3个月</font><br> <br> <font
							style="font-size: 30px;"><strong>4.3元</strong>/天</font><br> <br>
						<hr>
						超值会员价<font style="font-size: 26px;">389</font>元<br> <br>
						<input type="button" name="quarter" value="立即开通" onclick=""
							style="width: 150px;height: 40px;background: white;font-size:16px;font-family:黑体;color: red;border: 1px;border-radius:5px;cursor: pointer;">
					</div>
					<div id="no3" onmouseover="showRed3()" onmouseout="hiddenRed3()"
						class="MembershipServiceDivRed"
						style="width: 260px;height: 300px; margin-left: 10px;float: left;">
						<br> <br>
						<hr>
						<font style="font-size: 26px;">真心会员1个月</font><br> <br> <font
							style="font-size: 30px;"><strong>8.6元</strong>/天</font><br> <br>
						<hr>
						超值会员价<font style="font-size: 26px;">259</font>元<br> <br>
						<input type="button" name="month" value="立即开通" onclick=""
							style="width: 150px;height: 40px;background: white;font-size:16px;font-family:黑体;color: red;border: 1px;border-radius:5px;cursor: pointer;">
					</div>
				</div>
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
								value="立即开通"> <font style="color: #FF6347">399元/年</font>
							</td>
						</tr>
					</table>
	
				</div>
			</div>
			<div style="float: left;margin-left:20px; width: 301px;height:730px;">
				<div
					style="width: 300px;height:240px; border: 1px solid #ababab;border-radius:10px;text-align: center;background-color: white;">
					<div class="double"></div>
					<div class="doubleImg">
						<div
							style="float: left;margin-left:10px;margin-top:10px;width:80px;height: 80px;border-radius:40px;background-image: url('resources/images/1.JPG');"></div>
						<div
							style="float: left;margin-left:10px;margin-top:10px;width:80px;height: 80px;border-radius:45px;background-image: url('resources/images/3.jpg');"></div>
						<div
							style="float: left;margin-left:10px;margin-top:10px;width:80px;height: 80px;border-radius:45px;background-image: url('resources/images/4.jpg');"></div>
						<div
							style="float: left;margin-left:10px;margin-top:10px;width:80px;height: 80px;border-radius:45px;background-image: url('resources/images/5.jpg');"></div>
						<div
							style="float: left;margin-left:10px;margin-top:10px;width:80px;height: 80px;border-radius:45px;background-image: url('resources/images/6.jpg');"></div>
						<div
							style="float: left;margin-left:10px;margin-top:10px;width:80px;height: 80px;border-radius:45px;background-image: url('resources/images/2.jpg');"></div>
					</div>
				</div>
				<div
					style="width: 300px;height:300px; border: 1px solid #ababab;border-radius:5px;margin-top: 10px;background-color: white;">
					<font
						style="font-family: 黑体;color: black;font-size:16px;margin-left: 5px;margin-top: 5px">珍心问答</font><br>
					<br> <font
						style="color: black;font-size: 16px;margin-left: 5px;">已成功付费，但没有显示珍心会员图标怎么办？</font><br>
					<br> <font
						style="color: #ababab;font-size: 15px;margin-left: 5px;">可将成功支付截图反馈给客服人员，让客服人员协助。</font><br>
					<br> <font
						style="color: black;font-size: 16px;margin-left: 5px;">如果续费珍心会员，可以享受优惠吗？</font><br>
					<br> <font
						style="color: #ababab;font-size: 15px;margin-left: 5px;">可以享受8折优惠。</font><br>
					<br> <font
						style="color: black;font-size: 16px;margin-left: 5px;">是否可以随时退费？</font><br>
					<br> <font
						style="color: #ababab;font-size: 15px;margin-left: 5px;">不能。</font><br>
				</div>
			</div>
	
		</div>
		<!--新轮播end-->
	</div>
</body>
</html>
