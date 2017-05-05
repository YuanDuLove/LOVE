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
<base href="<%=basePath%>">
<title>缘都婚恋</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="keywords" content="缘都婚恋,潍坊缘都婚恋,缘都婚恋服务平台">
<link rel="stylesheet" type="text/css" href="" />
<style type="text/css">
a {
	text-decoration: none;
}
</style>
<script type="text/javascript">
	function showMemInfo(){
		window.location.href="userdata/showRegInfoAction.action";
	}
	
	function showMsgInfo(){
		window.location.href="showMsgAction.action";
	}
</script>
</head>

<body>
	<!-- 最大的div -->
	<div
		style="width: 1350px; margin:0 auto;">
		 
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
					alt="" src="resources/images/home2.png" style="line-height: 40px;height: 40px"></a></li>
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
					alt="" src="resources/images/vip.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="MyJsp.jsp" style="color: white;"><img
					alt="" src="resources/images/about1.gif" style="line-height: 40px;height: 40px"></a></li>
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
		 <div style="width: 100%;height:2350px; margin: 0 auto;background-image:url('resources/images/about1.png');">
			<!-- 
			<h4 style="text-align: center;">&nbsp;&nbsp;介绍缘都婚恋(网址http://www.yuandulove.com)以“走进缘都，牵手真爱”为己任。秉承“因为专注，所以专业；因为真诚，所以可信”的服务宗旨。</h4>
			<h4 style="text-align: center;">缘都婚恋开创“人人都可做红娘”的独特婚恋服务模式，解决信息不对称、资源不匹配的难题，首次提出“微红娘”一词，并将“微红娘”成功引用到</h4>
			<h4 style="text-align: center;">婚恋交友领域。从2015年开始全方位、多元化调研婚恋服务业市场现状，充分分析婚恋服务业市场前景。将先进的现代科技（网站、APP、公众号与自媒</h4>
			<h4 style="text-align: center;">体等）与传统的婚恋服务相结合，建设起大规模的现代婚恋服务体系，开拓了婚恋界线上线下结合服务模式。这在潍坊市是第一家，也是唯一的一家。</h4>
			<h4 style="text-align: center;">“要做就做最好的”一直是我们的不懈追求和服务理念。从2015年起全市建立和收编10余家线下实体店，构建了覆盖全市的专业的红娘婚恋服务网络。</h4>
			<h4 style="text-align: center;">创建伊始，即实行了实名会员制，依托使用权威认证机构对会员身份进行认证，是中国实名婚恋服务的践行者。目前，已有超过100名有效会员在缘都</h4>
			<h4 style="text-align: center;">婚恋找到了他们的真爱。2016年升级优化了集婚恋服务、法律援助、婚庆服务和情感分析为一体的专业婚恋互动平台，开启了线上、线下婚姻互助的新</h4>
			<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;模式，为万千单身求偶族和受情感困扰一族带来福祉。</h4>
			<h4 style="text-align: center;">&nbsp;&nbsp;未来三年（至2019年）将启动婚恋全产业链布局，进入婚礼庆典、婚纱摄影、婚品、婚礼地产、互联网金融等领域，为缘都婚恋会员提供婚恋领</h4>
			<h4 style="text-align: center;">域全方位服务。缘都婚恋的目标是通过不断探索和创新打通婚恋服务全产业链，为会员寻真爱，为加盟商谋福利，打造共赢的服务平台，全力冲刺成为</h4>
			<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;行业区域领跑者，从而走向全国。</h4>
			<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创始人简介:</h3>
			<h4 style="text-align: center;">缘都婚恋发起赵林波、王江波、倪强荣均为回乡创业的大学生。三人在各自所从事的行业和领域都取得了一定的成功，积攒了宝贵的创业经验和教训。</h4>
			<h4 style="text-align: center;">现在，为了一个共同的梦想，走在了一起创业的路上。由于发现身边大量单身朋友择偶遇到困难，三人毅然决定进入婚恋服务领域，并推出“人人都可做</h4>
			<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;红娘”式的专业婚恋服务模式，……。</h4>
			<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;企业荣誉:</h3> 
			<h4 style="text-align: center;">未来缘都婚恋将继续坚持“人人都可做红娘”的使命，以真诚的态度、专业的精神，为用户提供可信赖的服务。…… 社会参与和行业研究</h4>
			<h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;……………………………… </h4>
			 -->
		</div>
		<!--
		<div style="width: 100%;height:180px ;background:rgba(255,228,225,.3);">
					<div style="width: 800px;height: 180px;margin: 0 auto;">
				<div style="float: left;width: 100px;height: 100px;margin-top: 40px;">
					<img width="100px" height="100" alt="" src="resources/images/qrcode.png">
				</div>
				<div style="float: left;width: 600px;height: 100px;margin-top: 40px;margin-left: 20px;">
					联系人：臧晓辉&nbsp;&nbsp;13573650275<br>
					电话：86-0536-7667933<br>
					邮箱地址：z_promise@163.com<br>
					网址：www.z-promise.com<br>
					地址：山东省潍坊市坊子区北海路与凤凰大街交叉路口青年创业园B座802<br>
				</div>
			</div>
				
		</div>
		-->
	</div>
</body>
</html>
