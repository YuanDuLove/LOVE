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
	href="./resources/css/zsb.css" />
<script type="text/javascript">
	//menu 点击
	function HSSY() {
		document.getElementById("HSSY1").style.background="white";
		document.getElementById("HYJD1").style.background="#EE6AA7";
		document.getElementById("HQCH1").style.background="#EE6AA7";
		document.getElementById("HSLF1").style.background="#EE6AA7";
		document.getElementById("ZBSS1").style.background="#EE6AA7";
		document.getElementById("SDJG1").style.background="#EE6AA7";
		document.getElementById("HCZL1").style.background="#EE6AA7";
		document.getElementById("HYLP1").style.background="#EE6AA7";
	}
	function HYJD() {
		document.getElementById("HSSY1").style.background="#EE6AA7";
		document.getElementById("HYJD1").style.background="white";
		document.getElementById("HQCH1").style.background="#EE6AA7";
		document.getElementById("HSLF1").style.background="#EE6AA7";
		document.getElementById("ZBSS1").style.background="#EE6AA7";
		document.getElementById("SDJG1").style.background="#EE6AA7";
		document.getElementById("HCZL1").style.background="#EE6AA7";
		document.getElementById("HYLP1").style.background="#EE6AA7";
	}
	function HQCH() {
		document.getElementById("HSSY1").style.background="#EE6AA7";
		document.getElementById("HYJD1").style.background="#EE6AA7";
		document.getElementById("HQCH1").style.background="white";
		document.getElementById("HSLF1").style.background="#EE6AA7";
		document.getElementById("ZBSS1").style.background="#EE6AA7";
		document.getElementById("SDJG1").style.background="#EE6AA7";
		document.getElementById("HCZL1").style.background="#EE6AA7";
		document.getElementById("HYLP1").style.background="#EE6AA7";
	}
	function HSLF() {
		document.getElementById("HSSY1").style.background="#EE6AA7";
		document.getElementById("HYJD1").style.background="#EE6AA7";
		document.getElementById("HQCH1").style.background="#EE6AA7";
		document.getElementById("HSLF1").style.background="white";
		document.getElementById("ZBSS1").style.background="#EE6AA7";
		document.getElementById("SDJG1").style.background="#EE6AA7";
		document.getElementById("HCZL1").style.background="#EE6AA7";
		document.getElementById("HYLP1").style.background="#EE6AA7";
	}
	function ZBSS() {
		document.getElementById("HSSY1").style.background="#EE6AA7";
		document.getElementById("HYJD1").style.background="#EE6AA7";
		document.getElementById("HQCH1").style.background="#EE6AA7";
		document.getElementById("HSLF1").style.background="#EE6AA7";
		document.getElementById("ZBSS1").style.background="white";
		document.getElementById("SDJG1").style.background="#EE6AA7";
		document.getElementById("HCZL1").style.background="#EE6AA7";
		document.getElementById("HYLP1").style.background="#EE6AA7";
	}
	function SDJG() {
		document.getElementById("HSSY1").style.background="#EE6AA7";
		document.getElementById("HYJD1").style.background="#EE6AA7";
		document.getElementById("HQCH1").style.background="#EE6AA7";
		document.getElementById("HSLF1").style.background="#EE6AA7";
		document.getElementById("ZBSS1").style.background="#EE6AA7";
		document.getElementById("SDJG1").style.background="white";
		document.getElementById("HCZL1").style.background="#EE6AA7";
		document.getElementById("HYLP1").style.background="#EE6AA7";
	}
	function HCZL() {
		document.getElementById("HSSY1").style.background="#EE6AA7";
		document.getElementById("HYJD1").style.background="#EE6AA7";
		document.getElementById("HQCH1").style.background="#EE6AA7";
		document.getElementById("HSLF1").style.background="#EE6AA7";
		document.getElementById("ZBSS1").style.background="#EE6AA7";
		document.getElementById("SDJG1").style.background="#EE6AA7";
		document.getElementById("HCZL1").style.background="white";
		document.getElementById("HYLP1").style.background="#EE6AA7";

	}
	function HYLP() {
		document.getElementById("HSSY1").style.background="#EE6AA7";
		document.getElementById("HYJD1").style.background="#EE6AA7";
		document.getElementById("HQCH1").style.background="#EE6AA7";
		document.getElementById("HSLF1").style.background="#EE6AA7";
		document.getElementById("ZBSS1").style.background="#EE6AA7";
		document.getElementById("SDJG1").style.background="#EE6AA7";
		document.getElementById("HCZL1").style.background="#EE6AA7";
		document.getElementById("HYLP1").style.background="white";

	}

	function hidden2() {
		document.getElementById("HSSY1").style.background="#EE6AA7";
		document.getElementById("HYJD1").style.background="#EE6AA7";
		document.getElementById("HQCH1").style.background="#EE6AA7";
		document.getElementById("HSLF1").style.background="#EE6AA7";
		document.getElementById("ZBSS1").style.background="#EE6AA7";
		document.getElementById("SDJG1").style.background="#EE6AA7";
		document.getElementById("HCZL1").style.background="#EE6AA7";
		document.getElementById("HYLP1").style.background="#EE6AA7";
	}
	//轮播图显示
	/*window.onload = function() {
		var container = document.getElementById('container');
		var list = document.getElementById('list');
		var buttons = document.getElementById('buttons').getElementsByTagName(
				'span');
		var prev = document.getElementById('prev');
		var next = document.getElementById('next');
		var index = 1;
		var len = 3;
		var animated = false;
		var interval = 3000;
		var timer;

		function animate(offset) {
			if (offset == 0) {
				return;
			}
			animated = true;
			var time = 300;
			var inteval = 10;
			var speed = offset / (time / inteval);
			var left = parseInt(list.style.left) + offset;

			var go = function() {
				if ((speed > 0 && parseInt(list.style.left) < left)
						|| (speed < 0 && parseInt(list.style.left) > left)) {
					list.style.left = parseInt(list.style.left) + speed + 'px';
					setTimeout(go, inteval);
				} else {
					list.style.left = left + 'px';
					if (left > -200) {
						list.style.left = -965 * len + 'px';
					}
					if (left < (-965 * len)) {
						list.style.left = '-965px';
					}
					animated = false;
				}
			}
			go();
		}

		function showButton() {
			for ( var i = 0; i < buttons.length; i++) {
				if (buttons[i].className == 'on') {
					buttons[i].className = '';
					break;
				}
			}
			buttons[index - 1].className = 'on';
		}

		function play() {
			timer = setTimeout(function() {
				next.onclick();
				play();
			}, interval);
		}
		function stop() {
			clearTimeout(timer);
		}

		next.onclick = function() {
			if (animated) {
				return;
			}
			if (index == 3) {
				index = 1;
			} else {
				index += 1;
			}
			animate(-960);
			showButton();
		}
		prev.onclick = function() {
			if (animated) {
				return;
			}
			if (index == 1) {
				index = 3;
			} else {
				index -= 1;
			}
			animate(965);
			showButton();
		}

		for ( var i = 0; i < buttons.length; i++) {
			buttons[i].onclick = function() {
				if (animated) {
					return;
				}
				if (this.className == 'on') {
					return;
				}
				var myIndex = parseInt(this.getAttribute('index'));
				var offset = -965 * (myIndex - index);

				animate(offset);
				index = myIndex;
				showButton();
			}
		}

		container.onmouseover = stop;
		container.onmouseout = play;

		play();
	}*/
	function logo() {
		href.location = "index.jsp";
	}
	function ckts(){
		window.location.href="Factory1.jsp";
	}
	function cwrj(){
		window.location.href="Factory2.jsp";
	}
	function dljz(){
		window.location.href="Factory3.jsp";
	}
	function gszc(){
		window.location.href="Factory4.jsp";
	}
	function sbzl(){
		window.location.href="Factory5.jsp";
	}
	function zltx(){
		window.location.href="Factory6.jsp";
	}
	function ckts2(){
		window.location.href="Factory1.jsp";
	}
	function dljz2(){
		window.location.href="Factory3.jsp";
	}
	function qydl2(){
		window.location.href="Factory2.jsp";
	}
	function gszc2(){
		window.location.href="Factory4.jsp";
	}
</script>

</head>

<body>
	<!-- 最大的div -->
	<div style="width: 1350px; height: 4500px; margin: 0 auto;background-color: green">
		<!-- 存放logo -->
		<div style="background-color: yellow">
			<div onclick="logo()" style="width:100%;height: 150px">
				<a href="homepage.jsp">
				<div
					style="margin-left:100px;background-image:url('resources/images/logo.png') ;width:442px;height: 85px;float: left;">
				</div> </a>
			<div
				style="font-family:黑体;font-size: 25px;padding-top: 40px;float: left;margin-left: 520px;">
				全国统一服务热线:<br>&nbsp;&nbsp;13070730682
			</div>
		</div>
		</div>
		<!-- 滚动框 -->
		<div style="border-bottom:1px solid #000;width: 1200px;height: 560px;background-color: red;margin-left: 80px;">
			<div style="width:190px;height:560px;background-color: white;">
				<div style="width:190px;height: 70px;background-color:#EE6AA7;text-align: center;line-height:70px;font-size:18px;text-decoration:none;background-image:url('resources/images/jt.png');"onmouseover="HSSY()" id="HSSY1";onmouseout="hidden2()">婚纱摄影</div>
				<div style="width:190px;height: 70px;background-color:#EE6AA7;text-align: center;line-height:70px;font-size:18px;text-decoration:none;background-image:url('resources/images/jt.png');"onmouseover="HYJD()" id="HYJD1";onmouseout="hidden2()">婚宴酒店</div>
				<div style="width:190px;height: 70px;background-color:#EE6AA7;text-align: center;line-height:70px;font-size:18px;text-decoration:none;background-image:url('resources/images/jt.png');"onmouseover="HQCH()" id="HQCH1";onmouseout="hidden2()">婚庆策划</div>
				<div style="width:190px;height: 70px;background-color:#EE6AA7;text-align: center;line-height:70px;font-size:18px;text-decoration:none;background-image:url('resources/images/jt.png');"onmouseover="HSLF()" id="HSLF1";onmouseout="hidden2()">婚纱礼服</div>
				<div style="width:190px;height: 70px;background-color:#EE6AA7;text-align: center;line-height:70px;font-size:18px;text-decoration:none;background-image:url('resources/images/jt.png');"onmouseover="ZBSS()" id="ZBSS1";onmouseout="hidden2()">珠宝首饰</div>
				<div style="width:190px;height: 70px;background-color:#EE6AA7;text-align: center;line-height:70px;font-size:18px;text-decoration:none;background-image:url('resources/images/jt.png');"onmouseover="SDJG()" id="SDJG1";onmouseout="hidden2()">四大金刚</div>
				<div style="width:190px;height: 70px;background-color:#EE6AA7;text-align: center;line-height:70px;font-size:18px;text-decoration:none;background-image:url('resources/images/jt.png');"onmouseover="HCZL()" id="HCZL1";onmouseout="hidden2()">婚车租赁</div>
				<div style="width:190px;height: 70px;background-color:#EE6AA7;text-align: center;line-height:70px;font-size:18px;text-decoration:none;background-image:url('resources/images/jt.png');"onmouseover="HYLP()" id="HYLP1";onmouseout="hidden2()">婚宴礼品</div>
			</div>
		</div>
		<div style="width:1200px;height: 150px;background-color: red;margin-top: 10px;margin-left: 80px;border: 1px">
			<div style="float: left;width:600px;height: 150px;background-color:gray;border: 1px">
				<form action="" method="post">
					<ul style="text-decoration: none; ">
						<li style="float: left;margin-top: 20px;list-style-type: none;">
							<s:select name = "graphy" cssStyle="width:120px;height:30px" list="#{'0':'婚纱摄影','1':'4000元以下','2':'4000-5000元','3':'5000-6000元','4':'6000-7000元','5':'7000以上'}"/>
						</li>
						<li style="float: left;margin-top: 20px;list-style-type: none;">
							<s:select name = "planning" cssStyle="margin-left:10px;width:120px;height:30px" list="#{'0':'婚礼策划','1':'5000元以下','2':'5千-1万元','3':'1万元-2万元','4':'2万以上'}"/>
						</li>
						<li style="float: left;margin-top: 20px;list-style-type: none;">
							<s:select name = "planning" cssStyle="margin-left:10px;width:120px;height:30px" list="#{'0':'婚宴酒店','1':'3000元以下','2':'3000-1万元','3':'1万元-2万元','4':'2万以上'}"/>
						</li>
						<br><br><br>
						<li style="float: left;margin-top: 10px;list-style-type: none;">
							<s:select name = "planning" cssStyle="width:120px;height:30px" list="#{'0':'婚纱礼服','1':'2000元以下','2':'2000-3000','3':'4000-5000','4':'5000-6000','5':'6000以上'}"/>
						</li>
						
						<li style="float: left;margin-top: 10px;list-style-type: none;">
							<s:select name = "planning" cssStyle="margin-left:10px;width:120px;height:30px" list="#{'0':'新娘跟妆','1':'1000元以下','2':'1000-2000','3':'2000-3000','4':'3000以上'}"/>
						</li>
						<li style="float: left;margin-top: 10px;list-style-type: none;">
							<s:select name = "planning" cssStyle="margin-left:10px;width:120px;height:30px" list="#{'0':'婚车租赁','1':'2000元以下','2':'2000-3000','3':'3000-4000','4':'4000以上'}"/>
						</li>
					</ul>  
				</form>
			</div>
			<div style="float: left;width: 90px;height: 90px;background-color: blue;"></div>
		</div>
		<div style="width:1200px;height: 3450px;background-color: red;margin-top: 10px;margin-left: 80px;border: 1px">
				<!--轻松找酒店  -->
			<div style="border-bottom:1px solid #000;width: 1200px;height: 80px;background-color:orange; ">
				<div style="float: left;width: 300px;height: 60px;background-color: red;font-family: 楷体;font-size: 39px;color: #EE00EE">轻松找酒店</div>
				<div style="float: left;width:620px;height: 50px;background-color: gray;margin-top: 10px;margin-left: 10px;border: 1px">
					<ul style="text-decoration: none; ">
						<li style="float: left;margin-top:1px;list-style-type: none;">
							<s:select name = "graphy" cssStyle="width:150px;height:30px" list="#{'0':'请选择所在区域','1':'4000元以下','2':'4000-5000元','3':'5000-6000元','4':'6000-7000元','5':'7000以上'}"/>
						</li>
						<li style="float: left;margin-top: 1px;list-style-type: none;">
							<s:select name = "planning" cssStyle="margin-left:10px;width:150px;height:30px" list="#{'0':'请选择桌数','1':'5000元以下','2':'5千-1万元','3':'1万元-2万元','4':'2万以上'}"/>
						</li>
						<li style="float: left;margin-top: 1px;list-style-type: none;">
							<s:select name = "planning" cssStyle="margin-left:10px;width:150px;height:30px" list="#{'0':'请选择价格区间','1':'5000元以下','2':'5千-1万元','3':'1万元-2万元','4':'2万以上'}"/>
						</li>
					</ul>
				</div>
			</div>
			<!-- 存放酒店的商家 -->
			<div style="width: 1200px;height: 400px;background-color: yellow;">
				<div style="float: left;width:300px;height: 400px;background-color: green;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
			</div>
			<!-- 婚纱摄影 -->
		<div style="width:1200px;height: 500px;background-color: red;margin-top: 10px;border: 1px">
				<!--轻松找酒店  -->
			<div style="border-bottom:1px solid #000;width: 1200px;height: 100px;background-color: blue">
				<div style="float: left;width: 300px;height: 60px;background-color: red;font-family: 楷体;font-size: 39px;color: #EE00EE">婚纱摄影</div>
			</div>
			<!-- 存放酒店的商家 -->
			<div style="width: 1200px;height: 400px;background-color: yellow;">
				<div style="float: left;width:300px;height: 400px;background-color: green;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
			</div>
		</div>
		<!-- 婚车服务 -->
		<div style="width:1200px;height: 500px;background-color: red;margin-top: 10px;border: 1px">
				<!--轻松找酒店  -->
			<div style="border-bottom:1px solid #000;width: 1200px;height: 100px;background-color: blue">
				<div style="float: left;width: 300px;height: 60px;background-color: red;font-family: 楷体;font-size: 39px;color: #EE00EE">婚车服务</div>
			</div>
			<!-- 存放酒店的商家 -->
			<div style="width: 1200px;height: 400px;background-color: yellow;">
				<div style="float: left;width:300px;height: 400px;background-color: green;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
			</div>
		</div>
		<!-- 婚车服务 -->
		<div style="width:1200px;height: 500px;background-color: red;margin-top: 10px;border: 1px">
				<!--轻松找酒店  -->
			<div style="border-bottom:1px solid #000;width: 1200px;height: 100px;background-color: blue">
				<div style="float: left;width: 300px;height: 60px;background-color: red;font-family: 楷体;font-size: 39px;color: #EE00EE">婚房装修</div>
			</div>
			<!-- 存放酒店的商家 -->
			<div style="width: 1200px;height: 400px;background-color: yellow;">
				<div style="float: left;width:300px;height: 400px;background-color: green;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
			</div>
		</div>
			<!-- 婚车服务 -->
		<div style="width:1200px;height: 500px;background-color: red;margin-top: 10px;border: 1px">
				<!--轻松找酒店  -->
			<div style="border-bottom:1px solid #000;width: 1200px;height: 100px;background-color: blue">
				<div style="float: left;width: 300px;height: 60px;background-color: red;font-family: 楷体;font-size: 39px;color: #EE00EE">蜜月旅行</div>
			</div>
			<!-- 存放酒店的商家 -->
			<div style="width: 1200px;height: 400px;background-color: yellow;">
				<div style="float: left;width:300px;height: 400px;background-color: green;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
			</div>
		</div>
		<!--婚庆服务 -->
			<div style="width:1200px;height: 950px;background-color: red;margin-top: 10px;border: 1px">
				<!--轻松找酒店  -->
			<div style="border-bottom:1px solid #000;width: 1200px;height: 100px;background-color: blue">
				<div style="float: left;width: 300px;height: 60px;background-color: red;font-family: 楷体;font-size: 39px;color: #EE00EE">婚庆服务</div>
			</div>
			<!-- 存放酒店的商家 -->
			<div style="width: 1200px;height: 400px;background-color: yellow;">
				<div style="float: left;width:300px;height: 400px;background-color: green;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: pink;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: red;"></div>
				<div style="margin-top: 10px;margin-left: 20px;float: left;width:280px;height: 190px;background-color: white ;"></div>
			</div>
			<div style="width: 1200px;height: 80px;background-color:orange;margin-top: 30px;background-image:url('resources/images/flow.png') ;"></div>
			<div style="width: 1200px;height: 280px;background-color:gray ;margin-top: 30px;border-top:4px solid #FF8C00;">
				<div style="width: 1200px;height: 50px;background-color:white ;margin-top: 30px;border-top:4px solid #FF8C00;">
					<a style="float:left ;text-decoration: none;display: block;margin-left:300px; margin-top: 30px" href="http://www.miitbeian.gov.cn/">鲁ICP备16048451号-1</a>
					<div>版权所有<a style="float:left ;text-decoration: none;display: block;margin-left:10px; margin-top: 30px" href="http://www.z-promise.com">潍坊智诺睿达网络科技有限公司</a></div>
				</div>
			</div>
		</div>
		
		</div>
		
		<!--  
		<div class="Menubj">
			<ul class="nav" style="list-style-type:none">
				<li class="SYbutton">
					<div
						style="line-height:60px ;float: left;width: 137px;height:60px;margin-left: 160px;text-align: center;"
						id="Homepage1" class="CPFLDiv3">
						<a href="index.jsp" style="font-size:18px;text-decoration:none">首页</a>
					</div></li>
				<li class="SYbutton">
					<div
						style="line-height:60px ;float: left;width: 137px;height:60px;margin-left: 0px;text-align: center;"
						onmouseover="Company()" id="Company1" class="CPFLDiv3"
						onmouseout="hidden2()">
						<a href="Company.jsp" style="font-size:18px;text-decoration:none">公司介绍</a>
					</div></li>
				<li class="SYbutton">
					<div
						style="line-height:60px ;float: left;width: 137px;height:60px;margin-left: 0px;text-align: center;"
						onmouseover="Service()" id="Service" class="CPFLDiv3"
						onmouseout="hidden2()">
						<a href="Factory.jsp" style="font-size:18px;text-decoration:none">服务项目</a>
					</div>
				</li>
				<li class="SYbutton">
					<div
						style="line-height:60px ;float: left;width: 137px;height:60px;margin-left: 0px;text-align: center;"
						onmouseover="Industry()" id="Industry1" class="CPFLDiv3"
						onmouseout="hidden2()">
						<a href="News.jsp" style="font-size:18px;text-decoration:none">行业资讯</a>
					</div>
				</li>
				<li class="SYbutton">
					<div
						style="line-height:60px ;float: left;width: 137px;height:60px;margin-left: 0px;text-align: center;"
						onmouseover="Agent()" id="Industry1" class="CPFLDiv3"
						onmouseout="hidden2()">
						<a href="Protuct.jsp" style="font-size:18px;text-decoration:none">代理知识</a>
					</div>
				</li>
				<li class="SYbutton">
					<div
						style="line-height:60px ;float: left;width: 137px;height:60px;margin-left: 0px;text-align: center;"
						onmouseover="Contact()" id="Contact1" class="CPFLDiv3"
						onmouseout="hidden2()">
						<a href="Callme.jsp" style="font-size:18px;text-decoration:none">联系我们</a>
					</div>
				</li>
				<li class="SYbutton">
					<div
						style="line-height:60px ;float: left;width: 137px;height:60px;margin-left: 0px;text-align: center;"
						onmouseover="Map()" id="Map1" class="CPFLDiv3"
						onmouseout="hidden2()">
						<a href="Map.jsp" style="font-size:18px;text-decoration:none">LBS</a>
					</div>
				</li>

			</ul>
		</div>   -->
		<!-- 轮播图显示 -->
		
		<!-- 服务项目 -->
		
		
		<!--关于我们 -->
		
	</div>
</body>
</html>
