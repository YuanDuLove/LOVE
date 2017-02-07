<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>
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
	href="../resources/css/userdatacss.css">
<script type="text/javascript">
	function showbasicinfoSubDiv() {
		if(document.getElementById("basicinfoSubDiv").style.display == "none"){
			document.getElementById("basicinfoSubDiv").style.display = "block";
			//document.getElementById("basicinfoSubDiv").style.background="#f0ebf3";
		} else{
			document.getElementById("basicinfoSubDiv").style.display = "none";
			//document.getElementById("basicinfoSubDiv").style.background="white";
		}
	}
	
	function showlifeSubDiv(){
		if(document.getElementById("lifeSubDiv").style.display == "none"){
			document.getElementById("lifeSubDiv").style.display = "block";
		} else{
			document.getElementById("lifeSubDiv").style.display = "none";
		}
	}
	
	function showmarrySubDiv(){
		if(document.getElementById("marrySubDiv").style.display == "none"){
			document.getElementById("marrySubDiv").style.display = "block";
		} else{
			document.getElementById("marrySubDiv").style.display = "none";
		}
	}
	
	function showsetSubDiv(){
		if(document.getElementById("setSubDiv").style.display == "none"){
			document.getElementById("setSubDiv").style.display = "block";
		} else{
			document.getElementById("setSubDiv").style.display = "none";
		}
	}
	
	function showReg(){
		window.location.href="showRegInfoAction.action";
	}
	
	function showMate(){
		window.location.href="showMateAction.action";
	}
	
	function showLife(){
		window.location.href="showLifeAction.action";
	}
	
	function showWork(){
		window.location.href="showWorkAction.action";
	}
	function showSystem(){
		window.location.href="SystemSettings.jsp";
	}
	
	function showInner(){
		window.location.href="showInnerAction.action";
	}
	function showDetail(){
		window.location.href="detailInfo.action";
	}
	function showLike(){
		//window.location.href="SystemSettings.jsp";
		alert("兴趣爱好页面");
	}
	function showApprove(){
		alert("认证页面");
	}
	function showPhoto(){
		window.location.href="queryUserPhotoAction.action";
	}
	function showMarry(){
		window.location.href="showMarryAction.action";
	}
	function showFamily(){
		window.location.href="showFamilyAction.action";
	}
	function showMemInfo() {
		window.location.href = "showRegInfoAction.action";
	}
	function showMsgInfo(){
		window.location.href="../error.jsp";
	}
	function check(){
		var personality = document.getElementById("personality").value;
		if(personality.length > 200){
			alert("修改失败,字数超出规定范围");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div style="width: 1350px;margin: 0 auto;">
	<div style="width: 1350px;height: 80px">
			<a href="../homepage.jsp">
				<div
					style="margin-left:100px;background-image:url('../resources/images/logo.png') ;width:91px;height: 80px;float: left;">
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
					href="../homepage2.jsp"
					style="color: white;text-decoration:none">主页</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="../showMainAction.action"
					style="color: white;text-decoration:none">缘都空间</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="../showQueryAction.action" style="color: white;">搜索</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="../Matchmaker.jsp" style="color: white;">红娘服务</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="../Membership.jsp" style="color: white;">会员</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="../MyJsp.jsp" style="color: white;">关于我们</a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="../callme.jsp" style="color: white;">联系我们</a></li>
	
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="../resources/images/order.png" style="line-height: 60px"
					onclick="showMsgInfo()"></li>
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="../resources/images/msgicon.png" style="line-height: 60px"
					onclick="showMsgInfo()"></li>
				<li
					style="width:70px;height:100%;text-align:center;list-style: none;float: left;"><img
					alt="" src="../resources/images/mem.png" style="line-height: 60px"
					onclick="showMemInfo()"></li>
			</ul>
		</div>
		<!-- 用户信息主体div -->
		<div style="margin-top: 50px;width: 1250px;">
			<!-- 主要资料div -->
			<div class="regMainInfoDiv">
				<div
					style="width: 100%;height: 150px;background-color: green;text-align: center;">
					<div style="width: 100%;height: 80px;background-color: orange;line-height: 80px;">
						<a href="#" style="text-decoration: none;">
							<%
								Map userinfo = (Map)session.getAttribute("userinfo");
								String nickname = (String)userinfo.get("NIKENAME");
							 %>
							 <%=nickname %>
						</a>
					</div>
					<div>权限</div>
				</div>
				<hr>
				<div
					style="width: 100%;height: 60px;background-color: pink;text-align: center;">
					诚信值</div>
				<hr>
				<!-- 资料列表div start -->
				<div style="width: 100%;">
					<div class="regMainInfoListsDiv" onclick="showbasicinfoSubDiv()">
						<div class="regMainInfoListsImgDiv"
							style="background-image: url('../resources/images/user_basicinfo.jpg');"></div>
						<div class="regMainInfoListsTextDiv">
							<strong>基本资料</strong>
						</div>
					</div>
					<!-- 基本资料中的下拉子选项div -->
					<div id="basicinfoSubDiv" style="display: block;">
						<hr>
						<div class="infoSubDivList" onclick="showReg()">注册信息</div>
						<div class="infoSubDivList" onclick="showMate()">择偶条件</div>
						<div class="infoSubDivList" onclick="showInner()">内心独白</div>
					</div>
					<hr>
					<div class="regMainInfoListsDiv" onclick="showDetail()">
						<div class="regMainInfoListsImgDiv"
							style="background-image: url('../resources/images/user_info.jpg');"></div>
						<div class="regMainInfoListsTextDiv">
							<strong>详细资料</strong>
						</div>
					</div>
					<hr>
					<div class="regMainInfoListsDiv" onclick="showlifeSubDiv()">
						<div class="regMainInfoListsImgDiv"
							style="background-image: url('../resources/images/user_life.jpg');"></div>
						<div class="regMainInfoListsTextDiv">
							<strong>工作生活</strong>
						</div>
					</div>
					<!-- 工作生活的下拉子选项div -->
					<div id="lifeSubDiv" style="display: none;">
						<hr>
						<div class="infoSubDivList" onclick="showLife()">生活状态</div>
						<div class="infoSubDivList" onclick="showWork()">工作情况</div>
					</div>
					<hr>
					<div class="regMainInfoListsDiv" onclick="showLike()">
						<div class="regMainInfoListsImgDiv"
							style="background-image: url('../resources/images/user_like.jpg');"></div>
						<div class="regMainInfoListsTextDiv">
							<strong>兴趣爱好</strong>
						</div>
					</div>
					<hr>
					<div class="regMainInfoListsDiv" onclick="showmarrySubDiv()">
						<div class="regMainInfoListsImgDiv"
							style="background-image: url('../resources/images/user_marry.jpg');"></div>
						<div class="regMainInfoListsTextDiv">
							<strong>婚姻观</strong>
						</div>
					</div>
					<!-- 婚姻观的下拉子选项div -->
					<div id="marrySubDiv" style="display: none;">
						<hr>
						<div class="infoSubDivList" onclick="showMarry()">婚姻观</div>
						<div class="infoSubDivList" onclick="showFamily()">家庭条件</div>
					</div>
					<hr>
					<div class="regMainInfoListsDiv" onclick="showApprove()">
						<div class="regMainInfoListsImgDiv"
							style="background-image: url('../resources/images/user_approve.jpg');"></div>
						<div class="regMainInfoListsTextDiv">
							<strong>我的认证</strong>
						</div>
					</div>
					<hr>
					<div class="regMainInfoListsDiv" onclick="showPhoto()">
						<div class="regMainInfoListsImgDiv"
							style="background-image: url('../resources/images/user_photo.jpg');"></div>
						<div class="regMainInfoListsTextDiv">
							<strong>我的相册</strong>
						</div>
					</div>
					<hr>
					<div class="regMainInfoListsDiv" onclick="showsetSubDiv()">
						<div class="regMainInfoListsImgDiv"
							style="background-image: url('../resources/images/user_set.jpg');"></div>
						<div class="regMainInfoListsTextDiv">
							<strong>系统设置</strong>
						</div>
					</div>
					<!-- 设置的下拉子选项div -->
					<div id="setSubDiv" style="display: none;">
						<hr>
						<div class="infoSubDivList" onclick="showPassword()">修改登录密码</div>
						<div class="infoSubDivList" onclick="showSystem()">权限设置</div>
					</div>
				</div>
				<!-- 资料列表div start -->
			</div>
			<!-- 资料主要信息 -->
			<div class="regDataInfosDiv">
				<!-- 注册信息百分比div start -->
				<div class="showRegInfoDiv">
					生活状态
				</div>
				<!-- 注册信息百分比div end -->
				<!-- 信息修改div start -->
				<div style="background:white">
					<div class="modifyInfoDiv">
						<form action="modifyWorkAction" method="post">
							<ul>
								<li>
									&nbsp;职&nbsp;&nbsp;业 :<s:textfield name="OccupationName" cssClass="Occupation"/>
								</li>
								<li>
									&nbsp;公司类别 :<s:select name="companyType" cssClass="moneyInput" list="#{'1':'请选择', '2':'政府机关','3':'事业单位','4':'外资企业','5':'合资企业','6':'国营企业','7':'自有企业'}"/>
								</li>
								
								<li>
							 工作繁忙度 :<s:select name="workBusy" cssClass="moneyInput" list="#{'1':'请选择', '2':'有双休','3':'工作忙碌','4':'工作清闲','5':'自由工作时间','6':'经常出差'}"/>
								</li>
	               	 <div class="textareaBox textareaBox2">
	                    <p class="tip">描述一下您的职业？<span>可举例生活中的事，引用朋友的评价或您认可的心理测试结果</span></p>
	                    <div class="textareaBox-in">
	                        <s:textarea id="introducecontent4" cols="75" rows="6" name="personality" cssStyle="font-size:18px;" id="personality"/>
	                        <p class="tip">限200字以内
	                        
	                    </div>
							</ul>
							<div class="buttonDiv">
								<s:submit name="ok" value="保存并提交" cssClass="okBtnDiv" onclick="return check()"/>
								<input type="button" name="next" value="跳过" class="nextBtnDiv">
							</div>
						</form>
					</div>
				</div>
				<!-- 信息修改div end -->
			</div>
		</div>
	</div>
</body>
</html>
