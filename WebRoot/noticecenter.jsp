<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
body {
	background-image: url("resources/images/bg.jpg");
}
.msgli{
	float: left;
	width: 100px;
	height: 50px;
	font-family: 黑体;
	color: #949494;
	font-size: 18px;
	line-height: 50px;
	cursor: pointer;
}
.msgul{
	list-style-type: none;
	margin: 0;
	padding: 0;
	text-align: center;
	height: 50px;
	border-bottom: 1px solid #cdcdcd;
}
.msgli:HOVER {
	background: #9370db;
	color: white;
}
.msglied {
	background: #9370db;
	color: white;
	float: left;
	width: 100px;
	height: 50px;
	font-family: 黑体;
	font-size: 18px;
	line-height: 50px;
	cursor: pointer;
}
</style>
<script type="text/javascript">
	function showMemInfo(){
		window.location.href="userdata/showRegInfoAction.action";
	}
	function showMember(id){
		window.location.href="memInfoAction.action?id="+id;
	}
	
	function showMsgInfo(){
		window.location.href="showMsgAction.action";
	}
	
	function showMsg(){
		window.location.href="showMsgAction";
	}
	function showEmail(){
		window.location.href="showMsgAction";
	}
	function showNotice(){
		window.location.href="showNoticeAction";
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
			<div
				style="font-size: 24px;line-height: 140px;width: 400px;height: 80px;float: right;">
				咨询电话 | 0536-7336933</div>
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
					alt="" src="resources/images/vip.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="MyJsp.jsp" style="color: white;"><img
					alt="" src="resources/images/about.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="callme.jsp" style="color: white;"><img
					alt="" src="resources/images/call.gif" style="line-height: 40px;height: 40px"></a></li>
	
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
		<div style="width: 90%;height:900px;margin: 0 auto;">
			<div style="width: 70%;height:500px;float: left;">
				<div style="width: 100%;height: 35px;font-family: 黑体;font-size: 20px;margin-top: 30px;text-indent: 15px;">
					消息中心
					<b style="margin-top:5px;margin-left:3px;display: block;width: 100px;height: 3px;background: #895a93;overflow: hidden;"></b>
				</div>
				<div style="width: 100%;background: white;">
					<div>
						<ul class="msgul">
							<li class="msgli" onclick="showMsg()">消息</li>
							<li class="msgli" onclick="showEmail()">邮件</li>
							<li class="msglied" onclick="showNotice()">通知</li>
						</ul>
					</div>
					<!-- 数据迭代 -->
					<div style="width: 100%;background: white;">
						<s:if test="infos!=null">
							<s:iterator value="infos" status="st" var="info">
								<div style="width: 800px;height: 110px;margin-top: 10px;margin-left:10px;border-bottom: 1px solid #cdcdcd;">
									<div style="width: 100px;height: 100px;float: left;">
										<img width=100px height=100px alt="" src="<%=request.getContextPath()%>/images/<s:property value="USERPHOTO"/>">
									</div>
									<div style="width:600px;height: 100px;float: left;margin-left: 10px;">
										<div style="cursor: pointer;height: 20px;" onclick="showMember(<s:property value="USERID"/>)"><font style="font-family: 黑体;font-size: 18px;color: #6495ED"><s:property value="NIKENAME" /></font></div><br>
										<!-- struts2判断消息类型未实现 -->
										<font style="font-family: 黑体;font-size: 16px;color: #838B8B"><s:property value="DETAIL" /></font><br><br>
										<font style="font-family: 黑体;font-size: 14px;color: #cdcdcd"><s:property value="SENDTIME" /></font>
									</div>
								</div>
							</s:iterator>
						</s:if>
					</div>
				</div>
			</div>
			
			<div style="float: left;width: 27%;height: 800px;margin-left: 3%;margin-top: 50px;">
				<img width="100%" alt="" src="resources/images/ad_test.png">
			</div>
			
		</div>
	</div>
</body>
</html>
