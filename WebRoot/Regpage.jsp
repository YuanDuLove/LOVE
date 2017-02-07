<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="./resources/css/regcss.css">
 <script type="text/javascript" src="./resources/js/reg.js"  charset= "UTF-8"></script>
<script type="text/javascript" src="./resources/js/calendar.js"></script>
<script type="text/javascript">
	function login(){
		window.location.href="loginInterface.jsp";
	}
	function doinit() {
		//document.form1.username.focus();
		var tmp = Math.random();
		while (true) {
			if (tmp >= 0.1) {
				//写字母
				var content = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcedfghijklmnopqrstuvwxyz1234567890";
				var arr = new Array();

				for ( var i = 0; i < 4; i++) {
					var index = Math.floor(Math.random()*content.length);
					arr.push(content.charAt(index));

				}
				var str = arr.join("");

				document.getElementById("yzm1").innerHTML = "<font color='#01556B'>"
						+ str + "</font>";
				document.getElementById("img0").src = "servlet/TestServlet.servlet?yzm="
						+ str;
				break;
			} else
				tmp = Math.random();
		}
	}

	function check() {
		var yzm1 = document.form1.code.value;//用户输入的验证码
		var yzm2 = document.getElementById("yzm1").innerText;//实际生成的验证码
		if (yzm1.toLowerCase() != yzm2.toLowerCase()) {
			alert("请输入正确的验证码");
			document.form1.code.value = "";
			document.form1.yzm.focus();
			return false;
		}
	}
</script>

<!-- <script type="text/javascript" src="./resources/js/birthday.js"></script>  -->
</head>

<body onload="doinit()">
	<!-- Logo页面 -->
	<div class="logoDiv">
	<input name = "submit" type="button"  value="登录"  class="login" onclick="login()"/>
	</div>
	<!-- 主体页面 -->
	<div class="contentDiv">
	    <!--左侧  -->
		<div class="leftsideDiv">
		<!-- <div class="left"></div> -->
		<div class="biaozhi"></div>
		<div class="biaozhi2"></div>
		<div class="biaozhi3"></div>
		</div>
		<!-- 注册信息 -->
		<div class="regDiv">
			<h2 style="font-family: 微软雅黑">&nbsp;&nbsp;账号信息</h2>
			<form name = "form1"   action="regaction" method="post" onsubmit="return validateForm()" >
				<span style="font-family:Microsoft YaHei;padding-left: 23px;font-size:18px;color : #7B7B7B">注册方式</span> 
					<input size="30" type="radio" name="regmain" value="1" checked="checked">
					 <span style="font-size: 14px;">手机号注册</span>
					<input type="radio" name="regmain" value="2"> 
					 <span style="font-size: 14px;">邮箱注册</span>
					 <br><br>
				<span class="font">账号</span>
				 <input size="30"  id = "accont" class="border" type="text" onblur="checkAccont(this)"   autocomplete="off"
					placeholder="请输入您常用的手机号码" name="account" maxlength="11">
					<span id = "accont_span" class="span">请填写您常用的手机号</span> 
				<br><br>
				<span class="font1">图形码</span> 
				<input size="12" class="border" type="text" name="code" id="yzm0" onblur="check()"> 
				<div id="yzm1" style="width:10;display:none"></div>
				<IMG src="servlet/TestServlet.servlet?yzm=0" id="img0" vspace=3>
				<br><br>
				<span class="font1">验证码</span> 
				<input size="20" class="border" id = "vercode"   type="text" name="vercode" onblur="checkVercode(this)" />
				<span id = "vercode_span" class="span">请输入验证码</span>
				<br><br>
				<span class="font">密码</span>
				<input size="21" class="border" id = "pwd" type="password" onblur="checkPwd(this)" name ="pwd" autocomplete="off" 
				placeholder="6-16位的英文字母或数字" maxlength="16">
				<span id = "pwd_span" class="span">6-16位的英文字母或数字</span>
				<br><br>
				<span style = "font-family:  Microsoft YaHei;padding-left: 25px;color: #7B7B7B;font-size: 18px;">确认密码</span>
				<input size = "21" class="border2" id = "repwd" type="password" name = "repwd" maxlength="16"   onblur="checkRepwd(this)" />
				<span id = "repwd_span" class="repwd">两次密码不一致</span>
				
				<h2 style="font-family: 微软雅黑">&nbsp;&nbsp;完善资料</h2>
				<span class="font">姓名</span>
				<input size = "20" class="border" type="text" name ="username" id = "username"  onblur="checkUsername(this)"  autocomplete="off" placeholder="由2-5到中文组成"/>
				<span id = "username_span" class="span">由2-5个中文组成</span>
				<br><br>
				<span class="font">昵称 </span> 
					<input size="30" class="border" type="text" autocomplete="off" onblur="checkNickname(this)" id = "nickname"
					placeholder="最多可输入12个汉字、字母或数字" name="nickname" maxlength="12"> 
					<span id = "nickname_span" class="span">最多可输入12个汉字、字母或数字</span>
					<br><br>
				<span class="font">性别</span> 
				<input type="radio" name="sex" value="1" checked="checked">
				<span class="man">男</span> 
				<input type="radio" name="sex" value="2">
				<span class="woman">女</span>
				<span style="color:red;margin-left: 100px;">*</span>
				<span style="color:#7B7B7B;font-family:Microsoft YaHei;font-size:15px">注册后不可更改</span>
				<br><br>
				<div style="float: left;"><span class="font">身高</span>
				<input type="text" name = "height" class="border" size="13" id = "height"  onblur="checkHeight(this)" />
				<span style="color:#7B7B7B;font-size: 20px">cm</span>
				
				<!--  <img src="./resources/images/wrong.png" width="15" height="15" alt="错号" />-->
				<div id = "height_span"    style="background-color: white;margin-left: 255px;margin-top: -22px;display: none" ><img src="./resources/images/wrong.png" width="15" height="15" alt="错号" /></div>
			
				
				</div>
				<div  style="margin-left: 240px;position:absolute;">
				<span class="font3" >学历</span>
				<select name="educational" class="border">
				<option value="1">初中</option>
				<option value="2">中专</option>
				<option value="3">大专</option>
				<option value="4">本科</option>
				<option value="5">硕士</option>
				<option value="6">博士</option>
				</select>
				</div>
				<br><br><br>
						<span class="font">收入</span> 
						<select name="money" class="border">
							<option value="1">2000元以下</option>
							<option value="2">2000-3500元</option>
							<option value="3">3500-5000元</option>
							<option value="4">5000-8000元</option>
							<option value="5">8000元以上</option>
					</select>
					<span class="font2">婚姻</span>
					<select name = "marryStatus" class="border">
					<option value="1">未婚</option>
					<option value="2">离异</option>
					<option value="3">丧偶</option>
					</select>
					<br><br>
					<span class="font">生日</span>
					<s:textfield size="13" id = "birthday"  cssClass="border" name="birthday" readonly="true" onclick="calendar.show(this);"  onblur="checkBirthday(this)"/>
					<span id = "birthday_span" class="span">请选择</span>
					<br><br>
					<span class="font">地区</span>
					<select name = "area" class="border">
						<option value="1">奎文区</option>
						<option value="2">潍城区</option>
						<option value="3">寒亭区</option>
						<option value="4">坊子区</option>
						<option value="5">滨海经济开发区</option>
						<option value="6">高新技术开发区</option>
						<option value="7">经济开发区</option>
						<option value="8">峡山生态区</option>
						<option value="9">临朐县</option>
						<option value="10">昌乐县</option>
						<option value="11">青州市</option>
						<option value="12">诸城市</option>
						<option value="13">寿光市</option>
						<option value="14">安丘市</option>
						<option value="15">高密市</option>
						<option value="16">昌邑市</option>
					</select>
					<br><br>
					&nbsp;&nbsp;&nbsp;<span style="font-family:  Microsoft YaHei;color: #7B7B7B;font-size: 13px;padding-left: 55px;"><input name = "pact" type="checkbox" value="1" id ="pc" checked="checked" />
					已经阅读并同意<a href=""><span style="color: red;">缘都服务条款</span></a></span>
					<br><br>
					<input name = "button" type="submit" value="注册完成" class="subBtn" id = "tj" onclick="return checkbutton()"  />
				</form>
		</div>
		<!-- 右边 -->
		<div class="rightsideDiv">
		
		<div style="width: 100%;height: 550px;background-color: #F5F5F5;margin-top: 30px">
		<div class="right"></div>
		<div class="right2"></div>
		</div>
		</div>
		
	</div>
	<!-- 底部页面 -->
	<div class="bottomDiv">
	<div class="buttom"></div>
	</div>


</body>
</html>
