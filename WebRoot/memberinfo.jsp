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
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" type="text/css"
	href="./resources/css/memberinfocss.css">
	<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
<!--<script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>-->
<script type="text/javascript" src="resources/js/snow.js"></script>
<script type="text/javascript">
	function showgift() {
		document.getElementById("privilege").style.display = "none";
		document.getElementById("gift").style.display = "block";
	}
	function hiddendiv() {
		document.getElementById("gift").style.display = "none";
		document.getElementById("privilege").style.display = "none";
	}
	function showprivilege() {
		document.getElementById("gift").style.display = "none";
		document.getElementById("privilege").style.display = "block";
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
		<a name="top" id="top"></a>
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
		<div class="memBackgroud"></div>
		<div class="memberInfoDiv">
			<div class="memPersonInfo">
				<div class="memPersonInfoImg">
					<img src="<%=request.getContextPath()%>/images/<s:property value="userphoto"/>" alt="个人图片" style="width: 250px;height: 250px;">
				</div>
				<div class="memberPersonInfoTest">
					<div class="memInfoTestList">
						<div style="width: 100%;height: 50%">
							<a class="nicknameA">
								<s:label name="nickname"/>
							</a>
						</div>
						<div></div>
					</div>
					<hr>
					<div class="memInfoTestList">
						<table border="0px">
							<tr>
								<td>年龄:</td>
								<td><s:textfield name="age" width="200px" readonly="true" />
								</td>
								<td>身高:</td>
								<td><s:textfield name="height" width="200px" readonly="true" />
								</td>
								<td>月收入:</td>
								<td><s:textfield name="money" width="200px" readonly="true" />
								</td>
							</tr>
							<tr>
								<td>婚况:</td>
								<td><s:textfield name="marry" width="200px" readonly="true" />
								</td>
								<td>学历:</td>
								<td><s:textfield name="edu" width="200px" readonly="true" />
								</td>
								<td>工作地:</td>
								<td><s:textfield name="work_area" width="200px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>职业:</td>
								<td><s:textfield name="job" width="200px" readonly="true" />
								</td>
								<td>星座:</td>
								<td><s:textfield name="constellation" width="200px"
										readonly="true" />
								</td>
								<td>籍贯:</td>
								<td><s:textfield name="nativeplace" width="200px"
										readonly="true" />
								</td>
							</tr>
						</table>
					</div>
					<hr>
					<div class="memInfoTestList">
						<input type="button" name="email" value="发邮件" class="buttonInput"
							style="background-color: pink;"> <input type="button"
							name="email" value="约会" class="buttonInput"
							style="background-color: #DA70D6;"> <input type="button"
							name="email" value="打招呼" class="buttonInput"
							style="background-color: #EE82EE;"> <input type="button"
							name="email" value="委托红娘" class="buttonInput"
							style="background-color: #EE7AE9;">
					</div>
				</div>
			</div>
			<div style="margin-top: 20px;background-color:  #f7d9a5">
				<div class="memPersonInner">
					<div
						style="width: 100%;height: 30px;color: #F4A460;font-size: 20px;padding-top: 10px;padding-left:10px;">
						内心独白</div>
					<hr>
					<div style="width: 100%;height: 100px;padding-left:10px;">
						<s:textarea name="inner" style="border: 0px;width: 80%;height: 80%"
							readonly="true" />
					</div>
					<hr>
				</div>
				<div class="memPersonData">
					<div style="height: 100%;width: 200px;float: left;">
						<img src="resources/images/info.jpg" alt="详细资料"
							class="memPersonDataImg">
					</div>
					<div>
						<table border="0px">
							<tr>
								<td>性别:</td>
								<td><s:textfield name="sex" width="250px" readonly="true" />
								</td>
								<td>生肖:</td>
								<td><s:textfield name="zodiac" width="250px" readonly="true" />
								</td>
							</tr>
							<tr>
								<td>身高:</td>
								<td><s:textfield name="height" width="250px" readonly="true" />
								</td>
								<td>星座:</td>
								<td><s:textfield name="constellation" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>体重:</td>
								<td><s:textfield name="weight" width="250px" readonly="true" />
								</td>
								<td>血型:</td>
								<td><s:textfield name="blood" width="250px" readonly="true" />
								</td>
							</tr>
							<tr>
								<td>信仰:</td>
								<td><s:textfield name="faith" width="250px" readonly="true" />
								</td>
								<td>职业:</td>
								<td><s:textfield name="job" width="250px" readonly="true" />
								</td>
							</tr>
							<tr>
								<td>民族:</td>
								<td><s:textfield name="nation" width="250px" readonly="true" />
								</td>
								<td>公司:</td>
								<td><s:textfield name="company" width="250px"
										readonly="true" />
								</td>
							</tr>
							
						</table>
						<hr>
					</div>
				</div>
				<div class="memPersonFamily">
					<div style="height: 100%;width: 200px;float: left;">
						<img src="resources/images/life.jpg" alt="生活状况"
							class="memPersonDataImg">
					</div>
					<div>
						<table border="0px">
							<tr>
								<td>住房条件:</td>
								<td><s:textfield name="house" width="250px" readonly="true" />
								</td>
								<td>何时结婚:</td>
								<td><s:textfield name="marrydate" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>是否购车:</td>
								<td><s:textfield name="car" width="250px" readonly="true" />
								</td>
								<td>婚后与父母同住:</td>
								<td><s:textfield name="parent" width="250px" readonly="true" />
								</td>
							</tr>
							<tr>
								<td>是否吸烟:</td>
								<td><s:textfield name="smoke" width="250px" readonly="true" />
								</td>
								<td>与对方父母同住:</td>
								<td><s:textfield name="otherparent" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>是否喝酒:</td>
								<td><s:textfield name="drink" width="250px" readonly="true" />
								</td>
								<td>家务:</td>
								<td><s:textfield name="housework" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>厨艺:</td>
								<td><s:textfield name="cooking" width="250px"
										readonly="true" />
								</td>
								
							</tr>
							
						</table>
						<hr>
					</div>
				</div>
				<div class="memPersonSpouse">
					<div style="height: 100%;width: 200px;float: left;">
						<img src="resources/images/love.jpg" alt="择偶意向"
							class="memPersonDataImg">
					</div>
					<div>
						<table border="0px">
							<tr>
								<td>性别:</td>
								<td><s:textfield name="sex_other" width="250px"
										readonly="true" />
								</td>
								<td>有没有孩子:</td>
								<td><s:textfield name="havechild_other" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>年龄:</td>
								<td><s:textfield name="age_other" width="250px"
										readonly="true" />
								</td>
								<td>工作地区:</td>
								<td><s:textfield name="workarea_other" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>身高:</td>
								<td><s:textfield name="height_other" width="250px"
										readonly="true" />
								</td>
								<td>婚况:</td>
								<td><s:textfield name="marry_other" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>学历:</td>
								<td><s:textfield name="edu_other" width="250px"
										readonly="true" />
								</td>
								<td>月收入:</td>
								<td><s:textfield name="money_other" width="250px"
										readonly="true" />
								</td>
							</tr>
							
						</table>
						<hr>
					</div>
				</div>
				<!--
				<div class="memPersonLike">
					<div style="height: 100%;width: 200px;float: left;">
						<img src="resources/images/like.jpg" alt="个人喜好"
							class="memPersonDataImg">
					</div>
					 
					<div>
						<table border="0px">
							<tr>
								<td>喜欢的活动:</td>
								<td><s:textfield name="likeactivity" width="250px"
										readonly="true" />
								</td>
								<td>喜欢的食物:</td>
								<td><s:textfield name="likefood" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>喜欢的体育运动:</td>
								<td><s:textfield name="likesport" width="250px"
										readonly="true" />
								</td>
								<td>喜欢的地方:</td>
								<td><s:textfield name="likearea" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>喜欢的音乐:</td>
								<td><s:textfield name="likemusic" width="250px"
										readonly="true" />
								</td>
								<td>喜欢的宠物:</td>
								<td><s:textfield name="likeanimal" width="250px"
										readonly="true" />
								</td>
							</tr>
							<tr>
								<td>喜欢的影视节目:</td>
								<td><s:textfield name="likeTV" width="250px" readonly="true" />
								</td>
							</tr>
						</table>
						<hr>
					</div>
					 
				</div>
				-->
			</div>
		</div>
		<!-- 右边悬浮框div start -->
		<div
			style=" width:50px; height: 250px; border: 1px solid #D4CD49; position:fixed;right:0 ;top:40%">
			<div class="floatDiv"
				style="background-image: url('resources/images/ogle.jpg');"
				onmouseover="hiddendiv()" onclick="暗送秋波"></div>
			<div class="floatDiv"
				style="background-image: url('resources/images/gift.jpg');"
				onmouseover="showgift()"></div>
			<div class="floatDiv"
				style="background-image: url('resources/images/privilege.jpg');"
				onmouseover="showprivilege()"></div>
			<a href="#top" target="_self">
				<div class="floatDiv"
					style="background-image: url('resources/images/top.jpg');"
					onmouseover="hiddendiv()"></div> </a>
		</div>
		<!-- 右边悬浮框div end -->
		<!-- 送礼物div start -->
		<div id="gift"
			style=" background-color:#FFFAF0;width:300px; height: 300px; position:fixed;right:60px;top:40%;display: none;"
			onmouseover="showgift()" onmouseout="hiddendiv()">
			<div style="width: 100%;height: 50px;background-color: orange">
				Ta收到的礼物</div>
			<div style="width: 100%;height: 100px;">
				<div class="giftDivList"
					style="margin-left:10px;background-image: url('resources/images/gift_love.jpg');"></div>
				<div class="giftDivList"
					style="margin-left:20px;background-image: url('resources/images/gift_rose.jpg');"></div>
				<div class="giftDivList"
					style="margin-left:20px;background-image: url('resources/images/gift_chocolate.jpg');"></div>
			</div>
			<div style="width: 100%;height: 100px;">
				<div class="giftDivList"
					style="margin-left:10px;background-image: url('resources/images/gift_house.jpg');"></div>
				<div class="giftDivList"
					style="margin-left:20px;background-image: url('resources/images/gift_car.jpg');"></div>
				<div class="giftDivList"
					style="margin-left:20px;background-image: url('resources/images/gift_bag.jpg');"></div>
			</div>
		</div>
		<!-- 送礼物div end -->
		<!-- 星级特权div start -->
		<div id="privilege"
			style="width:300px; height: 300px; position:fixed;right:60px; ;top:35%;display: none;"
			onmouseover="showprivilege()" onmouseout="hiddendiv()">
			<div
				style="width: 100%;height: 100px;background-color: #9D90D1;text-align: center;color: white">
				<h2 style="padding-top:10px;">星级特权</h2>
				<h5 style="margin-top:10px;">搜索提前，尊贵标识，更多曝光，更多机会</h5>
			</div>
			<div style="width: 100%;height: 200px;background-color: white;">
				<div
					style="width: 100%;height: 100px;padding-left:30px;padding-top:10px;">
					<input type="radio" name="one"> 1个月&nbsp;&nbsp;<span
						style="color: #ff5b09">1</span>元/天<br> <br> <input
						type="radio" name="one"> 3个月&nbsp;&nbsp;<span
						style="color: #ff5b09">1</span>元/天<br> <br> <input
						type="radio" name="one">12个月&nbsp;&nbsp;<span
						style="color: #ff5b09">1</span>元/天
				</div>
	
				<div
					style="width: 150px;height: 50px;padding-left:75px;margin-top:20px;">
					<a href="#" style="display:block;width: 150px;height: 40px;">
						<div
							style="width: 143px;height: 40px;background-image: url('resources/images/open.jpg');">
						</div> </a>
	
				</div>
	
			</div>
		</div>
		<!-- 星级特权div start -->
	</div>
</body>
</html>
