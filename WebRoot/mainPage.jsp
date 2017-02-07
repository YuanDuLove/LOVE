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
		document.getElementById("emailDiv").style.background = "white";
		document.getElementById("remindDiv").style.background = "white";
		document.getElementById("messageImg").src = "./resources/images/message2.jpg";
		document.getElementById("emailImg").src = "./resources/images/email1.jpg";
		document.getElementById("remindImg").src = "./resources/images/remind1.jpg";
	}
	function changColor2() {
		document.getElementById("emailDiv").style.background = "#c7c2e2";
		document.getElementById("messageDiv").style.background = "white";
		document.getElementById("remindDiv").style.background = "white";
		document.getElementById("messageImg").src = "./resources/images/message1.jpg";
		document.getElementById("emailImg").src = "./resources/images/email2.jpg";
		document.getElementById("remindImg").src = "./resources/images/remind1.jpg";
	}
	function changColor3() {
		document.getElementById("remindDiv").style.background = "#c7c2e2";
		document.getElementById("emailDiv").style.background = "white";
		document.getElementById("messageDiv").style.background = "white";
		document.getElementById("messageImg").src = "./resources/images/message1.jpg";
		document.getElementById("emailImg").src = "./resources/images/email1.jpg";
		document.getElementById("remindImg").src = "./resources/images/remind2.jpg";
	}
	function hiddenColor() {
		document.getElementById("remindDiv").style.background = "white";
		document.getElementById("emailDiv").style.background = "white";
		document.getElementById("messageDiv").style.background = "white";
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
		window.location.href="error.jsp";
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
</script>
<style type="text/css">
.userphoto {
	width: 150px;
	height: 150px;
}

a {
	text-decoration: none;
}

body {
	background-image: url("resources/images/bg.jpg");
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
					style="margin-left:100px;background-image:url('resources/images/logo.png') ;width:91px;height: 80px;float: left;">
				</div> </a>
			<div
				style="font-size: 24px;line-height: 80px;width: 800px;height: 80px;float: left;">1亿
				"会员" | "实名婚恋网开创者"只有爱无需等待</div>
			<!-- 
			<div style="width: 195px;height: 80px;float: left;">
				<img alt="" src="resources/images/top-bg.jpg">
			</div>
			 -->
		</div>
		<div
			style="width: 1350px;height: 60px;background-color: #703987;position:relative;">
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
		<div
			style="width: 1200px;height: 145px;margin: 0 auto;background:url('resources/images/ad.jpg');cursor: pointer;"
			onclick="go()"></div>
		<div style="width: 1200px;margin: 0 auto;">
			<div style="width: 810px;float: left;">
				<div style="width: 100%;height: 150px;">
					<div id="messageDiv" onmouseover="changColor1()"
						onmouseout="hiddenColor()"
						style="width: 33%;height: 100%;background: white;float: left;text-align: center;border: 1px solid 	#EEE0E5;">
						<img id="messageImg" src="./resources/images/message1.jpg"
							style="margin-top: 30px;"><br>
						<br> <font style="font-family: 黑体;font-size: 18px;color: pink">0条消息</font>
					</div>
					<div id="emailDiv" onmouseover="changColor2()"
						onmouseout="hiddenColor()"
						style="width: 33%;height: 100%;background: white;float: left;text-align: center;border: 1px solid 	#EEE0E5;">
						<img id="emailImg" src="./resources/images/email1.jpg"
							style="margin-top: 30px;"><br>
						<br> <font style="font-family: 黑体;font-size: 18px;color: pink">没有邮件</font>
					</div>
					<div id="remindDiv" onmouseover="changColor3()"
						onmouseout="hiddenColor()"
						style="width: 33%;height: 100%;background: white;float: left;text-align: center;border: 1px solid 	#EEE0E5;">
						<img id="remindImg" src="./resources/images/remind1.jpg"
							style="margin-top: 30px;"><br>
						<br> <font style="font-family: 黑体;font-size: 18px;color: pink">0条系统通知</font>
					</div>
				</div>
				<div
					style="width: 100%;height: 80px;margin-top: 1px;line-height: 80px;">
					<div id="search">
						<font style="font-size: 20px;font-family: 黑体;color: #474747;">每日情缘</font>
						<!-- 
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
					<div style="width: 100%;background: white;">
						<!-- 数据迭代 -->
						<s:if test="infos!=null">
							<s:iterator value="infos" status="st">
								<div name="div" id="div"
									style="width: 350px;float: left;border: 1px solid #cdcdcd;margin-left: 20px;margin-top:5px;background: white;cursor: pointer;"
									onclick="showMember(<s:property value="ID"/>)">
									<div id="article"
										style="width: 150px;background: aqua;text-align: center;margin-left: 10px;float: left;">
										<img class="userphoto" name="userImg" alt=""
											src="<%=request.getContextPath()%>/images/<s:property value="USERPHOTO"/>">
									</div>
									<div style="width: 170px;margin-left: 10px;float: left;">
										<table style="width: 100%">
											<tr style="width: 100%">
												<td style="color: #436EEE;font-family: 黑体;font-size: 18px;">
													<s:property value="NIKENAME" /></td>
											</tr>
											<tr style="width: 100%">
												<td style="color: #ababab;font-family: 黑体;font-size: 14px;">
													<s:property value="AGE" /> 岁
													<s:property value="AREA" /> 
													<s:property value="HEIGHT" />cm
												</td>
												</tr>
											<tr>
												<td style="color: #ababab;font-family: 黑体;font-size: 14px;width: 170px;">
													内心独白：<s:property value="USERINNER" /></td>
											</tr>
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
				</div>
			</div>
			<div style="margin-left:30px;width: 360px;height: 100%;float: left;">
				<div
					style="width: 100%;height: 250px;border: 1px solid #dedede;border-radius:3px;background: white;">
					<div style="width: 100%;height: 200px;text-align: center;">
						<%
							Map userinfo = (Map) session.getAttribute("userinfo");
							String nikename = (String) userinfo.get("NIKENAME");
							String id = (String) userinfo.get("ID");
						%>
						<img
							src="<%=request.getContextPath()%>/images/<s:property value="userphotoStr" />"
							style="width: 130px;height: 130px"> <br>昵称：<%=nikename%>
						<br> <a href="userdata/showRegInfoAction.action">完善资料</a> <br>
						<a href="memInfoAction.action?id=<%=id%>">预览</a>
					</div>
					<div style="width: 100%;height: 50px;border-top: 1px solid #dedede;">
						<div onclick="modifyPhoto()"
							style="width: 33%;height: 100%;float: left;text-align: center;line-height: 50px;font-family: 黑体;border-right: 1px solid #ededed;cursor: pointer;">
							头像<font color="red">修改</font>
						</div>
						<div onclick="approve()"
							style="width: 33%;height: 100%;float: left;text-align: center;line-height: 50px;font-family: 黑体;border-right: 1px solid #ededed;cursor: pointer;">
							身份<font color="red">认证</font>
						</div>
						<div onclick="recharge()"
							style="width: 33%;height: 100%;float: left;text-align: center;line-height: 50px;font-family: 黑体;cursor: pointer;">
							珍爱币<font color="red">充值</font>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
