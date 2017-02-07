<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*" pageEncoding="UTF-8"%>
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
<meta http-equiv="keywords" content="缘都婚恋,潍坊缘都婚恋">
<title>潍坊缘都婚恋官方网站</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="./resources/css/loginInterface.css">
	<script type="text/javascript">
		//acount事件
		function showdiv(){
			var input2 = document.getElementById("input1");
			var pwd = document.getElementById("pwd");
			var input2Value = input2.value;
			var pwdValue = pwd.value;
			if(input2Value == 0){
				document.getElementById("warning_div").style.display="block";
				document.getElementById("overlap_warning_div1").style.display="none";
				document.getElementById("overlap_warning_div").style.display="none";
			}else if(input2Value >0){
				document.getElementById("warning_div").style.display="none";
			
			}
			
		}
		function hiddendiv(){
			document.getElementById("warning_div").style.display="none";
			document.getElementById("overlap_warning_div").style.display="none";
		}
		//password事件
		function showdiv1(){
			document.getElementById("password_warning_div").style.display="block";
			document.getElementById("overlap_warning_div1").style.display="none";
		}
		function hiddendiv1(){
			document.getElementById("password_warning_div").style.display="none"
		}
		function hiddendiv2(){
			var pwd = document.getElementById("pwd");
			var input2Value = input2.value;
			var pwdValue = pwd.value;
			if(pwdValue == 0){
			document.getElementById("password_warning_div").style.display="none";
			}
			
		}
		//判断格式
		function regtest(){
			var input1 = document.getElementById("input1");
			
			var input1Value = input1.value;
			var b = (/^[1][358][0-9]{9}$/i);
			var a = b.test(input1Value);
			if(a){
				document.getElementById("overlap_warning_div").style.display="none";
				document.getElementById("overlap_warning_div1").style.display="block";
			}else{
				document.getElementById("overlap_warning_div").style.display="block";
				document.getElementById("warning_div").style.display="none";
				document.getElementById("overlap_warning_div1").style.display="block";
			}
		}
		//function hiddendiv2(){
			//document.getElementById("overlap_warning_div").style.display="none";
		//}
		//登录判断
		function onclickShow(){
			var input2 = document.getElementById("input1");
			var pwd = document.getElementById("pwd");
			var input2Value = input2.value;
			var pwdValue = pwd.value;
			if(input2Value == 0 && pwdValue == 0){
				document.getElementById("input1").focus();
				document.getElementById("overlap_warning_div").style.display="block";
				return false;
			}else if(input2Value == 0 && pwdValue != 0){
				document.getElementById("input1").focus();
				document.getElementById("overlap_warning_div").style.display="block";
				document.getElementById("overlap_warning_div1").style.display="none";
				
				return false;
			}else if(input2Value != 0 && pwdValue == 0){
				document.getElementById("input1").focus();
				
				document.getElementById("overlap_warning_div1").style.display="block";
				return false;
			}
			return true;
		}
		function showBottom(){
			document.getElementById("otherlogin").style.display="block";
			
			if(document.getElementById("span_jiantou").className == "slider1"){
			document.getElementById("span_jiantou").className="";
			document.getElementById("otherlogin").style.display="none";
			}else{
				document.getElementById("span_jiantou").className="slider1";
			
			}
		}
	</script>
</head>

<body bgproperties="fixed">
	<!-- logo 预留 -->
	<div class="transparent_Trapezoid">
		<form action="loginAction" method="post" name="loginfrom" id="loginfrom">
			<div class="logoDiv" name="logoDiv"></div>



			<div class="account_div ">
				<input onmouseover="showdiv()" onmouseout="hiddendiv()" onchange="regtest()"  onfocus="regtest()"  id="input1" class="account account_input" type="text"
					 placeholder="会员|手机号" name="account" size="30" maxlength="11"
					tabindex="1" />
			</div>
			<div class="warning_div" id="warning_div">请输入您注册的手机号码</div>
			<div class="overlap_warning_div" id="overlap_warning_div">输入的格式不正确|未输入账号</div>
			<!--  <div class="overlap_warning_div2" id="overlap_warning_div2">请您先输入账号！</div>-->
			<div class="password_div">
				<input onmouseover="showdiv1()" onmouseout="hiddendiv1()" onfocus="hiddendiv1()" class="password password_input" name="password"
					type="password" id="pwd" placeholder="密码" maxlength="16" tabindex="2" />
			</div>
			<div class="password_warning_div" id="password_warning_div">6-16位英文字母或数字</div>
			<div class="overlap_warning_div1" id="overlap_warning_div1">请您输入密码</div>
			<a href="#" class="Forget_password_a">忘记密码？</a>
			<input class="login_input_submit" type="submit" name = "submit" value="登 录" onclick="return onclickShow()" />
			<div class="noAccount_div">没有缘都账号？<a class="noAccount_div_a" href="Regpage.jsp">立即注册></a></div>
			<p class="other_p1">合作网站账号登录:</p>
			<div class="iconAccout">
				<p>
					<a href="" class="a1" title="QQ">QQ</a>
					<a href="" class="a2" title="支付宝">支付宝</a>
					<a href="" class="a3" title="新浪微博">新浪微博</a>
					<a href="" class="a4" title="360">360</a>
                    <a href="" class="a5" title="百度">百度</a>
                    <span >更多<i  onclick="showBottom()" id="span_jiantou"></i></span>
				</p>
				<p style="display:none ;" id ="otherlogin">
					
                        <a href="" class="a6" title="微信">微信</a>
                        <a href="" class="a7" title="人人">人人</a>
                        <a href="" class="a8" title="蘑菇街">蘑菇街</a>
                        <a href="" class="a9" title="团800">团800</a>
                        <a href="" class="a10" title="迅雷">迅雷</a>
                    </p>
				</p>
			</div>
			
		</form>
			<div bg class="tel">红娘一对一热线:0536-7667933</div>
	</div>
	<div class="ownership"> <br/>
            缘都网股份有限公司|版权所有&copy; 2016 - 2020 缘都网|客服专线：0536-7667933	(8:00 至 20:00)
	</div>
</body>
</html>
