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
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="keywords" content="缘都婚恋,潍坊缘都婚恋,缘都婚恋服务平台">
<title>缘都婚恋服务平台</title>
<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
<!--<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>-->
<script type="text/javascript" src="resources/js/snow.js"></script>

<script type="text/javascript">

	function go() {
		window.location.href = "Membership.jsp";
	}
	function changColor1() {
		document.getElementById("messageDiv").style.background = "#c7c2e2";
		document.getElementById("emailDiv").style.background = "#E1E5D7";
		document.getElementById("remindDiv").style.background = "#E1E5D7";
		document.getElementById("messageImg").src = "./resources/images/message2.jpg";
		document.getElementById("emailImg").src = "./resources/images/email1.jpg";
		document.getElementById("remindImg").src = "./resources/images/remind1.jpg";
	}
	function changColor2() {
		document.getElementById("emailDiv").style.background = "#c7c2e2";
		document.getElementById("messageDiv").style.background = "#E1E5D7";
		document.getElementById("remindDiv").style.background = "#E1E5D7";
		document.getElementById("messageImg").src = "./resources/images/message1.jpg";
		document.getElementById("emailImg").src = "./resources/images/email2.jpg";
		document.getElementById("remindImg").src = "./resources/images/remind1.jpg";
	}
	function changColor3() {
		document.getElementById("remindDiv").style.background = "#c7c2e2";
		document.getElementById("emailDiv").style.background = "#E1E5D7";
		document.getElementById("messageDiv").style.background = "#E1E5D7";
		document.getElementById("messageImg").src = "./resources/images/message1.jpg";
		document.getElementById("emailImg").src = "./resources/images/email1.jpg";
		document.getElementById("remindImg").src = "./resources/images/remind2.jpg";
	}
	function hiddenColor() {
		document.getElementById("remindDiv").style.background = "#E1E5D7";
		document.getElementById("emailDiv").style.background = "#E1E5D7";
		document.getElementById("messageDiv").style.background = "#E1E5D7";
		document.getElementById("messageImg").src = "./resources/images/message1.jpg";
		document.getElementById("emailImg").src = "./resources/images/email1.jpg";
		document.getElementById("remindImg").src = "./resources/images/remind1.jpg";
	}
	function showMember(id){
		window.location.href="memInfoAction.action?id="+id;
	}
	function showMemInfo(){
		window.location.href="userdata/showRegInfoAction.action";
	}
	
	function showMsgInfo(){
		window.location.href="showMsgAction.action";
	}
	
	function modifyPhoto() {
		window.location.href="userphoto.jsp";
	}
	function approve() {
		window.location.href="error.jsp";
	}
	function recharge() {
		window.location.href="error.jsp";
	} 
	function showMsg(){
		window.location.href="showMsgAction.action";
	}
	function showNotice(){
		window.location.href="showNoticeAction.action";
	}
	function home(){
		window.location.href="homepage2.jsp";
	}
</script>
<style type="text/css">
.userphoto {
	width: 300px;
	height: 300px;
}

a {
	text-decoration: none;
}

body {
	height:2800px;
	background-image: url("resources/images/space.jpg");
}
table{
　　table-layout: fixed;
}
td{
	white-space:nowrap;
    text-overflow:ellipsis;
    overflow: hidden;
}
</style>
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
					alt="" src="resources/images/zoneoff.png" style="line-height: 40px;height: 40px"></a></li>
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
		<div
			style="width: 100%;height: 330px;margin: 0 auto;background:url('resources/images/apply.png');">
			<div style="width: 320px;height: 150px;float: right;">
					<div id="messageDiv" onmouseover="changColor1()"
						onmouseout="hiddenColor()" onclick="showMsg()"
						style="width: 200px;height: 50px;background:#E1E5D7;line-height:50px;text-align: center;margin-top:100px;border: 1px solid #EEE0E5;">
						<font style="font-family: 黑体;font-size: 18px;color: pink"><s:property value="unReadMsg"/>条消息</font>
					</div>
					<div id="emailDiv" onmouseover="changColor2()"
						onmouseout="hiddenColor()"
						style="width: 200px;height: 50px;background:#E1E5D7;line-height:50px;text-align: center;margin-top:10px;border: 1px solid #EEE0E5;">
						<font style="font-family: 黑体;font-size: 18px;color: pink">没有邮件</font>
					</div>
					<div id="remindDiv" onmouseover="changColor3()"
						onmouseout="hiddenColor()" onclick="showNotice()"
						style="width: 200px;height: 50px;background: #E1E5D7;line-height:50px;text-align: center;margin-top:10px;border: 1px solid #EEE0E5;">
						<font style="font-family: 黑体;font-size: 18px;color: pink"><s:property value="unReadNotice"/>条系统通知</font>
					</div>
				</div>
		</div>
		<div style="width: 1300px;height:2550px;margin: 0 auto;">
			<div style="width: 940px;float: left;">
				<div
					style="width: 100%;height: 120px;margin-top: 1px;line-height: 80px;">
					<div id="search" style="background: url('resources/images/meiriqingyuan.png');width: 470px;height: 100%;margin: 0 auto;">
						<!--
						<font style="font-size: 20px;font-family: 黑体;color: #474747;">每日情缘</font>
						<s:textfield name="area_mate" readonly="true"
							cssStyle="width:40px;height:25px;border:0px;background:#f2f2f2;margin-left:20px;" />
						<s:textfield name="age_mate" readonly="true"
							cssStyle="width:60px;height:25px;border:0px;background:#f2f2f2;" />
						<s:textfield name="height_mate" readonly="true"
							cssStyle="width:80px;height:25px;border:0px;background:#f2f2f2;" />
						<s:textfield name="edu_mate" readonly="true"
							cssStyle="width:40px;height:25px;border:0px;background:#f2f2f2;" />
						<s:textfield name="money_mate" readonly="true"
							cssStyle="width:80px;height:25px;border:0px;background:#f2f2f2;" />
						的
						<s:textfield name="sex_mate" readonly="true"
							cssStyle="width:100px;height:25px;border:0px;background:#f2f2f2;" />
							 -->
						<!-- 
						<img src="./resources/images/modify1.jpg"> 
						<a href="" style="font-size: 14px;font-family: 黑体; title="修改择偶条件">修改择偶条件</a>
						-->
					</div>
					<div style="width: 100%;height:800px;background: white;">
						<!-- 数据迭代 -->
						<s:if test="infos!=null">
							<s:iterator value="infos" status="st">
								<div name="div" id="div"
									style="width: 300px;float: left;border: 1px solid #cdcdcd;margin-right: 10px;margin-top:5px;background: white;cursor: pointer;"
									onclick="showMember(<s:property value="ID"/>)">
									<div id="article"
										style="width: 300px;text-align: center;">
										<img class="userphoto" name="userImg" alt=""
											src="<%=request.getContextPath()%>/images/<s:property value="USERPHOTO"/>">
									</div>
									
									<div style="width: 170px;margin: 0 auto;">
										<table style="width: 100%">
											<tr style="width: 100%">
												<td style="color: #436EEE;font-family: 黑体;font-size: 18px;">
													<s:property value="NIKENAME" /></td>
											</tr>
											<tr style="width: 100%">
												<td style="color: #ababab;font-family: 黑体;font-size: 14px;">
													<s:property value="AGE" />岁
													<s:property value="AREA" /> 
													<s:property value="HEIGHT" />cm
												</td>
												</tr>
												<!-- 
												<tr>
													<td style="color: #ababab;font-family: 黑体;font-size: 14px;width: 170px;">
														内心独白：<s:property value="USERINNER" /></td>
												</tr>
											 -->
										</table>
										<!-- 
										<div style="color: #436EEE;font-family: 黑体;font-size: 18px;">
											<s:property value="NIKENAME" /> 
										</div> <br> 
										<div style="color: #ababab;font-family: 黑体;font-size: 14px;">
											<s:property value="AGE" /> 岁
											<s:property value="AREA" /> 
											<s:property value="HEIGHT" />cm <br>
											内心独白：<s:property value="USERINNER" /><br>
										</div> 
										 -->
									</div>
								</div>
							</s:iterator>
						</s:if>
					</div>
					<div style="width:100%;height:40px;margin-top:10px;background: url('resources/images/bgimg2.png');"></div>
					<div style="width:100%;height:730px;background: url('resources/images/bgimg3.png');"></div>
					<div style="width:100%;height:40px;margin-top:10px;background: url('resources/images/bgimg2.png');"></div>
					<div style="width:100%;height:700px;margin-top: 50px;">
						<div style="width:50%;height:700px;float: left;text-align: center;">
							<img height="700px;" alt="" src="resources/images/bgimg4.png">
						</div>
						<div style="width:50%;height:700px;float: left;text-align: center;">
							<img height="400px;" alt="" src="resources/images/bgimg5.png">
						</div>
					</div>
					<div style="width:100%;height:40px;margin-top:10px;background: url('resources/images/bgimg2.png');"></div>
				</div>
			</div>
			<div style="margin-left:10px;width: 350px;float: left;margin-top: 100px;">
				<div
					style="width: 100%;height: 300px;border: 1px solid #dedede;border-radius:3px;background: #deded6;">
					<div style="width: 100%;height: 200px;text-align: center;margin-top: 20px;">
						<%
							Map userinfo = (Map) session.getAttribute("userinfo");
							String nikename = (String) userinfo.get("NIKENAME");
							String id = (String) userinfo.get("ID");
						%>
						<img
							src="<%=request.getContextPath()%>/images/<s:property value="userphotoStr" />"
							style="width: 150px;height: 150px;border: 3px solid #ee9c0b;border-radius:5px;"> 
							<!-- 昵称：<s:property value="userNikeName"/> <br>-->
							<br><br>
							<a style="color: #f52f52" href="userdata/showRegInfoAction.action">完善资料</a> 
							<font style="color: #f52f52">/</font>
							<a style="color: #f52f52" href="memInfoAction.action?id=<%=id%>">预览</a>
						
					</div>
					<div style="width: 100%;height: 80px;">
						<div onclick="modifyPhoto()"
							style="width: 25%;height: 35px;background-color:#f52f52;margin-left:5%;float: left;text-align: center;line-height: 35px;font-family: 黑体;border-radius:5px;cursor: pointer;">
							<font color="white">头像修改</font>
						</div>
						<div onclick="approve()"
							style="width: 25%;height: 35px;background-color:#f52f52;margin-left:5%;float: left;text-align: center;line-height: 35px;font-family: 黑体;border-radius:5px;cursor: pointer;">
							<font color="white">身份认证</font>
						</div>
						<div onclick="recharge()"
							style="width: 25%;height: 35px;background-color:#f52f52;margin-left:5%;float: left;text-align: center;line-height: 35px;font-family: 黑体;border-radius:5px;cursor: pointer;">
							<font color="white">珍爱币充值</font>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="width: 1350px;height: 200px;background: #f48d9e;text-align: center;">
			<img style="margin-top: 10px;" alt="" src="resources/images/bgimg6.png">
			<div style="width: 150px;height: 30px;margin:0 auto;margin-top:20px;line-height:30px;border-radius:5px;background: white;color: #5d96b4;cursor: pointer;" onclick="home()">返回首页</div>
		</div>
	</div>
</body>
</html>
