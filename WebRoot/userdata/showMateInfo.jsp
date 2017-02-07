<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
	
		var bheight = document.getElementById("bheight").value;
		var eheight = document.getElementById("eheight").value;
		var bage = document.getElementById("bage").value;
		var eage = document.getElementById("eage").value;
		
		if(bage < 18 || eage < 18){
			alert("年龄不能小于18岁");
			return false;
		} else if(bage > eage){
			alert("起始年龄不能大于终止年龄");
			return false;
		} else if(bage > 100 || eage > 100){
			alert("年龄填写不规范");
			return false;
		}
		
		if(bheight < 20 || eheight > 250){
			alert("身高填写不规范");
			return false;
		} else if(bheight > eheight){
			alert("起始身高不能大于终止身高");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
<s:property value="msg"/>
<br>
<br>
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
					<div class="regInfoDiv">
						<strong>注册信息</strong>
					</div>
					
					<div class="previewMySelfDiv">
						<a href="#">预览我的资料</a>
					</div>
				</div>
				<!-- 注册信息百分比div end -->
				<!-- 信息修改div start -->
				<div style="background:white">
					<div class="modifyInfoDiv">
						<form action="mateInfoAction" method="post">
							<ul>
								<li>
									性&nbsp;&nbsp;别:
									<s:select name="mate_sex" cssClass="mateSexCss" list="#{'1':'男','2':'女' }"/>
								</li>
								<li>
									年&nbsp;&nbsp;龄:
									<s:textfield cssClass="mateSelectCss" name="mate_bage" id="bage"/>
									到
									<s:textfield cssClass="mateSelectCss" name="mate_eage" id="eage"/>
								</li>
								<li>
									工作地区:
									<s:select name = "mate_workarea" cssClass="mateSexCss" list="#{'0':'请选择','1':'奎文区','2':'潍城区','3':'寒亭区','4':'坊子区','5':'滨海经济开发区','6':'高新技术开发区','7':'经济开发区','8':'峡山生态区','9':'临朐县','10':'昌乐县','11':'青州市','12':'诸城市','13':'寿光市','14':'安丘市','15':'高密市','16':'昌邑市','17':'其他' }"/>
								</li>
								<li>
									籍&nbsp;&nbsp;贯:
									<s:select name = "mate_nativearea" cssClass="mateSexCss" list="#{'0':'请选择','1':'奎文区','2':'潍城区','3':'寒亭区','4':'坊子区','5':'滨海经济开发区','6':'高新技术开发区','7':'经济开发区','8':'峡山生态区','9':'临朐县','10':'昌乐县','11':'青州市','12':'诸城市','13':'寿光市','14':'安丘市','15':'高密市','16':'昌邑市','17':'其他' }"/>
								</li>
								<li>
									婚姻状况:
									<s:select cssClass="mateSexCss" name="mate_marry" list="#{'1':'不限','2':'未婚','3':'离异','4':'丧偶' }"/>
								</li>
								<li>
									学&nbsp;&nbsp;历:
									<s:select cssClass="mateSexCss" name="mate_edu" list="#{'0':'不限','1':'初中','2':'中专','3':'大专','4':'本科','5':'硕士','6':'博士' }"/>
								</li>
								<li>
									月收入&nbsp;:
									<s:select cssClass="mateSelectCss" name="mate_bmoney" list="#{'1':'不限','2':'3000','3':'5000','4':'8000','5':'12000','6':'20000','7':'50000' }"/>
									到
									<s:select cssClass="mateSelectCss" name="mate_emoney" list="#{'1':'不限','2':'3000','3':'5000','4':'8000','5':'12000','6':'20000','7':'50000' }"/>
								</li>
								<li>
									有无孩子:
									<s:select cssClass="mateSexCss" name="mate_child" list="#{'1':'不限','2':'没有','3':'有，住一起','4':'有，偶尔住一起','5':'有，不住一起' }"/>
								</li>
								<li>
									身&nbsp;&nbsp;高:
									<s:textfield cssClass="mateSelectCss" name="mate_bheight" id="bheight"/>
									到
									<s:textfield cssClass="mateSelectCss" name="mate_eheight" id="eheight"/>cm
								</li>
								
							</ul>
							<div class="mateButtonDiv">
								<input type="submit" name="ok" value="保存并提交" class="okBtnDiv" onclick="return check()">
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
