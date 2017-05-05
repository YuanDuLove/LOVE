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
		window.location.href="showMsgAction.action";
	}
	function showMemInfo(){
		window.location.href="userdata/showRegInfoAction.action";
	}
</script>
 
<style type="text/css">
.userphoto {
	width: 300px;
	height:300px;
}
a{
	text-decoration:none;
}
body {
	background-image: url("resources/images/space.jpg");
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
					alt="" src="resources/images/zone.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="showQueryAction.action" style="color: white;"><img
					alt="" src="resources/images/searchoff.gif" style="line-height: 40px;height: 40px"></a></li>
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
			style="width: 1350px;height: 650px;margin: 0 auto;position:relative;background: url('resources/images/bgimg7.jpg');">
			<div style="width: 100%;height: 220px;background-color: rgba(223,184,187,.7);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#B2DFB8BC,endColorstr=#B2DFB8BC);position:absolute; bottom:0;">
				<div style="width: 80%;height: 44px;margin: 0 auto;margin-top:70px;background: url('resources/images/bgimg8.png') no-repeat;"></div>
				<form action="showQueryAction" method="post">
					<div
						style="width: 80%;height: 100px;margin: 0 auto;margin-top: 10px;">
		
						<font style="font-family: 黑体;font-size: 16px;">
							性别: <s:select name="sex"
								list="#{'':'不限','1':'男','2':'女' }"
								cssStyle="width:80px;height:30px;background:white;border:1px #cdcdcd;border-radius:1px;color:#8c8c8c;font-size:16px;font-family:黑体;" />
							
							 &nbsp;&nbsp;&nbsp;&nbsp;婚姻状况: <s:select name="marrystatus"
								list="#{'':'不限','1':'未婚','2':'离异','3':'丧偶' }"
								cssStyle="width:80px;height:30px;background:white;border:1px #cdcdcd;border-radius:1px;color:#8c8c8c;font-size:16px;font-family:黑体;" />
							&nbsp;&nbsp;&nbsp;&nbsp;地区:<s:select name="area"
								cssStyle="width:80px;height:30px;background:white;border:1px #cdcdcd;border-radius:1px;color:#8c8c8c;font-size:16px;font-family:黑体;" 
								list="#{'0':'请选择','1':'奎文区','2':'潍城区','3':'寒亭区','4':'坊子区','5':'滨海经济开发区','6':'高新技术开发区','7':'经济开发区','8':'峡山生态区','9':'临朐县','10':'昌乐县','11':'青州市','12':'诸城市','13':'寿光市','14':'安丘市','15':'高密市','16':'昌邑市','17':'其他'}"
								/>
							&nbsp;&nbsp;&nbsp;&nbsp;年龄: <s:textfield name="bage"
								cssStyle="width:50px;height:30px;background:white;border:1px #cdcdcd;border-radius:1px;color:#8c8c8c;font-size:16px;font-family:黑体;" />
							- <s:textfield name="eage"
								cssStyle="width:50px;height:30px;background:white;border:1px #cdcdcd;border-radius:1px;color:#8c8c8c;font-size:16px;font-family:黑体;" />
							&nbsp;&nbsp;&nbsp;&nbsp;身高: <s:textfield name="bheight"
								cssStyle="width:50px;height:30px;background:white;border:1px #cdcdcd;border-radius:1px;color:#8c8c8c;font-size:16px;font-family:黑体;" />
							- <s:textfield name="eheight"
								cssStyle="width:50px;height:30px;background:white;border:1px #cdcdcd;border-radius:1px;color:#8c8c8c;font-size:16px;font-family:黑体;" />
							<br>
						<br> <s:submit value="提交"
								cssStyle="width:200px;height:40px;background:#F84358;border:1px #cdcdcd;border-radius:1px;color:white;font-size:16px;font-family:黑体;margin-left:350px;" />
						</font>
					</div>
				</form>
			</div>
			
		</div>
		<div style="width: 1290px;margin: 0 auto;">
			<!-- 数据迭代 -->
			<s:if test="infos!=null">
				<s:iterator value="infos" status="st"  var="info">
					<div name="div" id="div" style="background:white;width: 300px;float: left;border: 1px solid #cdcdcd;margin-right: 20px;margin-top: 10px;"
						onclick="showMember(<s:property value="ID"/>)">
						<div id="article" style="width: 300px;height: 300px;">
							<s:if test="#info.USERPHOTO!=null">
								<img class="userphoto" name="userImg" alt="" src="<%=request.getContextPath()%>/images/<s:property value="USERPHOTO"/>">
							</s:if>
							<s:else>
								<img class="userphoto" name="userImg" alt="" src="resources/images/noimg.jpg">
							</s:else>
						</div>
						<div style="width:100%;height:50px;background-color: #fa8f88;text-align: center;line-height: 50px;">
							<font style="color: white;font-family: 黑体;font-size: 16px;">
								<s:property value="NIKENAME" />
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
