<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pay.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	a {
		text-decoration: none;
	}
	body {
		background-image: url("resources/images/bg.jpg");
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
		<div style="margin-top: 20px;">
			<div style="width: 750px;background: white;border: 1px solid #D4D4D4;margin-left: 150px;float: left;">
				<h1 style="text-align: center;">银行汇款</h1>
				<div style="color: #FF8C69;font-size: 24px;">
					<marquee behavior="scroll" direction="left" loop="infinite"  scrolldelay="30" scrollamount="5">
						以下汇款方式为缘都婚恋指定付款账户，汇款成功后，请联系:13573650275
					</marquee>
				</div>
				<br><br>
				<div>
					<div style="font-family: 黑体;font-size: 16px;color: #FF8C69">
						&nbsp;&nbsp;微信支付
					</div>
					<div>
						<img width="500px" alt="" src="resources/images/wx.jpg" style="margin-left: 20px;">
					</div>
				</div>
				<div>
					<div style="font-family: 黑体;font-size: 16px;color: #FF8C69">
						&nbsp;&nbsp;支付宝支付
					</div>
					<div>
						<img width="400px" alt="" src="resources/images/zfb.jpg" style="margin-left: 50px;">
					</div>
				</div>
				<hr>
				<div style="margin-left: 10px;">
					您还可通过其他方式付款
					<div style="margin-top: 20px;">
						<font style="font-family: 黑体;font-size: 16px;color: #FF8C69">微信号码</font><br>
						<p>13573650275</p>
					</div>
					
					<div style="margin-top: 20px;">
						<font style="font-family: 黑体;font-size: 16px;color: #FF8C69">支付宝账户</font>
						<p>13573650275</p>
						<p style="font-size: 14px;">姓名  臧晓辉</p>
					</div>
					
					<div style="margin-top: 20px;">
						<font style="font-family: 黑体;font-size: 16px;color: #FF8C69">建设银行</font>
						<p>13573650275</p>
						<p style="font-size: 14px;">姓名  臧晓辉</p>
					</div>
				</div>
				<br>
				<br>
			</div>
			<div style="width: 350px;height: 800px;border: 1px solid #D4D4D4;border-radius:2px;float: left;margin-left: 20px;">
				广告位
			</div>
		</div>
	</div>
  </body>
</html>
