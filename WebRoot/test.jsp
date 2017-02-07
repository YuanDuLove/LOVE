<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'test.jsp' starting page</title>
<script type="text/javascript">
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
		var yzm1 = document.form1.yzm.value;//用户输入的验证码
		var yzm2 = document.getElementById("yzm1").innerText;//实际生成的验证码
		if (yzm1.toLowerCase() != yzm2.toLowerCase()) {
			alert("请输入有效的验证码!");
			document.form1.yzm.value = "";
			document.form1.yzm.focus();
			return false;
		}
	}
</script>



</head>

<body onload="doinit()">
	<form name="form1">
		<input name="yzm" type="text" size="12" onKeyPress="dojudge()"
			id="yzm0">
		</td>
		<div id="yzm1" style="width:10;display:none"></div>
		<IMG src="servlet/TestServlet.servlet?yzm=0" id="img0" vspace=3>
		<input type="button" value="test" onclick="return check()">
	</form>
</body>
</html>
