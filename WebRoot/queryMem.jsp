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
<script type="text/javascript">
	function changSex() {

	}
	function changAge() {

	}
	function changeMarry() {

	}
	function changeHeight() {

	}
	function showMember(id){
		window.location.href="memInfoAction.action?id="+id;
	}
	
	function showMsgInfo(){
		window.location.href="error.jsp";
	}
	function showMemInfo(){
		window.location.href="userdata/showRegInfoAction.action";
	}
</script>
 
<style type="text/css">
.userphoto {
	width: 200px;
	height:200px;
}
a{
	text-decoration:none;
}
body{
	background-image: url("resources/images/bg.jpg");
}
</style>

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
		<div
			style="width: 1200px;height: 200px;margin: 0 auto;margin-top: 10px;border: 1px solid #cdcdcd;background: white;">
			<form action="showQueryAction" method="post">
				<div
					style="width: 80%;height: 200px;margin: 0 auto;margin-top: 20px;">
	
					<font style="font-family: 黑体;font-size: 16px;">
						性&nbsp;&nbsp;&nbsp;&nbsp;别: <s:select name="sex"
							list="#{'':'不限','1':'男','2':'女' }"
							cssStyle="width:80px;height:30px;background:#FFBBFF;border:1px #cdcdcd;border-radius:1px;color:white;font-size:16px;font-family:黑体;" />
						年龄: <s:textfield name="bage"
							cssStyle="width:80px;height:30px;background:#FFBBFF;border:1px #cdcdcd;border-radius:1px;color:white;font-size:16px;font-family:黑体;" />
						- <s:textfield name="eage"
							cssStyle="width:80px;height:30px;background:#FFBBFF;border:1px #cdcdcd;border-radius:1px;color:white;font-size:16px;font-family:黑体;" />
						<br>
					<br> 婚姻状况: <s:select name="marrystatus"
							list="#{'':'不限','1':'未婚','2':'离异','3':'丧偶' }"
							cssStyle="width:80px;height:30px;background:#FFBBFF;border:1px #cdcdcd;border-radius:1px;color:white;font-size:16px;font-family:黑体;" />
						身高: <s:textfield name="bheight"
							cssStyle="width:80px;height:30px;background:#FFBBFF;border:1px #cdcdcd;border-radius:1px;color:white;font-size:16px;font-family:黑体;" />
						- <s:textfield name="eheight"
							cssStyle="width:80px;height:30px;background:#FFBBFF;border:1px #cdcdcd;border-radius:1px;color:white;font-size:16px;font-family:黑体;" />
						<br>
					<br> <s:submit value="提交"
							cssStyle="width:200px;height:40px;background:#FFBBFF;border:1px #cdcdcd;border-radius:1px;color:white;font-size:16px;font-family:黑体;margin-left:80px;" />
					</font>
				</div>
			</form>
		</div>
		<div style="width: 1200px;margin: 0 auto;">
			<!-- 数据迭代 -->
			<s:if test="infos!=null">
				<s:iterator value="infos" status="st">
					<div name="div" id="div" style="background:white;width: 250px;float: left;border: 1px solid #cdcdcd;margin-left: 20px;"
						onclick="showMember(<s:property value="ID"/>)">
						<div id="article" style="width: 200px;text-align: center;margin-left: 10px;">
							<img class="userphoto" name="userImg" alt=""
								src="<%=request.getContextPath()%>/images/<s:property value="USERPHOTO"/>">
						</div>
						<div style="margin-left: 10px;">
							<font style="color: #436EEE;font-family: 黑体;font-size: 18px;">
								<s:property value="NIKENAME" />
							</font>
							<br> 
							<font style="color: #ababab;font-family: 黑体;font-size: 14px;">
								<s:property value="AGE" />
								<s:property value="AREA" />
								<s:property value="HEIGHT" />cm
							 </font>
							<br>
						</div>
					</div>
				</s:iterator>
			</s:if>
		</div>
	</div>
</body>
</html>
