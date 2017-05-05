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
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="keywords" content="缘都婚恋,潍坊缘都婚恋,缘都婚恋服务平台">
<title>缘都婚恋服务平台</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css/homecss.css">
<style type="text/css">
a{
	text-decoration:none;
}
body{
	background:#F78E9D;
}
</style>
<script type="text/javascript">
	function showRed1() {
		document.getElementById("no1").className = "HongniangServiceDivRed";
		document.getElementById("no2").className = "HongniangServiceDivWhite";
		document.getElementById("no3").className = "HongniangServiceDivWhite";
		document.getElementById("no4").className = "HongniangServiceDivWhite";
		document.getElementById("no5").className = "HongniangServiceDivWhite";
		document.getElementById("first").style.display = "block";
		document.getElementById("second").style.display = "none";
		document.getElementById("third").style.display = "none";
		document.getElementById("forth").style.display = "none";
		document.getElementById("fifth").style.display = "none";
	}
	function showRed2() {
		document.getElementById("no2").className = "HongniangServiceDivRed";
		document.getElementById("no1").className = "HongniangServiceDivWhite";
		document.getElementById("no3").className = "HongniangServiceDivWhite";
		document.getElementById("no4").className = "HongniangServiceDivWhite";
		document.getElementById("no5").className = "HongniangServiceDivWhite";
		document.getElementById("first").style.display = "none";
		document.getElementById("second").style.display = "block";
		document.getElementById("third").style.display = "none";
		document.getElementById("forth").style.display = "none";
		document.getElementById("fifth").style.display = "none";
	}
	function showRed3() {
		document.getElementById("no3").className = "HongniangServiceDivRed";
		document.getElementById("no2").className = "HongniangServiceDivWhite";
		document.getElementById("no1").className = "HongniangServiceDivWhite";
		document.getElementById("no4").className = "HongniangServiceDivWhite";
		document.getElementById("no5").className = "HongniangServiceDivWhite";
		document.getElementById("first").style.display = "none";
		document.getElementById("second").style.display = "none";
		document.getElementById("third").style.display = "block";
		document.getElementById("forth").style.display = "none";
		document.getElementById("fifth").style.display = "none";
	}
	function showRed4() {
		document.getElementById("no4").className = "HongniangServiceDivRed";
		document.getElementById("no2").className = "HongniangServiceDivWhite";
		document.getElementById("no3").className = "HongniangServiceDivWhite";
		document.getElementById("no1").className = "HongniangServiceDivWhite";
		document.getElementById("no5").className = "HongniangServiceDivWhite";
		document.getElementById("first").style.display = "none";
		document.getElementById("second").style.display = "none";
		document.getElementById("third").style.display = "none";
		document.getElementById("forth").style.display = "block";
		document.getElementById("fifth").style.display = "none";
	}
	function showRed5() {
		document.getElementById("no5").className = "HongniangServiceDivRed";
		document.getElementById("no2").className = "HongniangServiceDivWhite";
		document.getElementById("no3").className = "HongniangServiceDivWhite";
		document.getElementById("no4").className = "HongniangServiceDivWhite";
		document.getElementById("no1").className = "HongniangServiceDivWhite";
		document.getElementById("first").style.display = "none";
		document.getElementById("second").style.display = "none";
		document.getElementById("third").style.display = "none";
		document.getElementById("forth").style.display = "none";
		document.getElementById("fifth").style.display = "block";
	}
	function showMemInfo() {
		window.location.href = "userdata/showRegInfoAction.action";
	}
	function showMsgInfo(){
		window.location.href="showMsgAction.action";
	}
	function pay(){
		window.location.href="pay.jsp";
	}
</script>
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
					alt="" src="resources/images/search.png" style="line-height: 40px;height: 40px"></a></li>
				<li
					style="width:150px;height:100%;text-align:center;list-style: none;float: left;"><a
					href="Matchmaker.jsp" style="color: white;"><img
					alt="" src="resources/images/matchoff.gif" style="line-height: 40px;height: 40px"></a></li>
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
			style="background-color: red;width: 1350px;height: 570px;margin: 0 auto;background: url('resources/images/bgimg9.png');">
		
		</div>
		<!-- 红娘一对一服务页面样式div -->
		<div class="frame_960">
			<div style="float: left;">
				<div class="Cherish">
					<font style="font-size: 22px;">缘都婚恋红娘服务与其他婚介服务的区别</font>
				</div>
				<div class="Step">
					<div style="width: 100%;height: 40px;">
						<div style="float: left;width: 120px;height: 40px;background: #eee9bf;font-family: 黑体;color: #aaaaaa;text-align: center;line-height: 40px;">保障特权</div>
					</div>
					<div>
						<div id="step1">
							<div style="width: 100%;height: 100px;margin-top: 30px;">
								<div style="float: left;width: 105px;height: 100px;margin-left: 20px;">
									<img alt="" src="resources/images/privilege14.jpg">
								</div>
								<div style="float: left;width:500px;height: 80px;margin-left: 30px;margin-top:10px;border: 1px solid #cdcdcd;border-radius:3px;">
									<font style="font-family:黑体;color: #FF4040;font-size: 22px;">征婚方式</font><br>
									<font style="font-family:黑体;font-size: 16px;">缘都婚恋所有红娘均经过系统的培训，从事红娘行业多年，经验丰富。可以为您提供一对一的私人订制服务。</font>
								</div>
							</div>
							<div style="width:100%;height: 100px;margin-top: 30px;">
								<div style="float: left;width: 105px;height: 100px;margin-left: 20px;">
									<img alt="" src="resources/images/privilege15.jpg">
								</div>
								<div style="float: left;width:500px;height: 80px;margin-left: 30px;margin-top:10px;border: 1px solid #cdcdcd;border-radius:3px;">
									<font style="font-family:黑体;color: #FF4040;font-size: 22px;">婚恋/心理咨询</font><br>
									<font style="font-family:黑体;font-size: 16px;">缘都婚恋拥有专业的婚恋专家及心理专家为您提供婚恋指导及心理咨询服务。</font>
								</div>
							</div>
							<div style="width: 100%;height: 100px;margin-top: 30px;">
								<div style="float: left;width: 105px;height: 100px;margin-left: 20px;">
									<img alt="" src="resources/images/privilege14.jpg">
								</div>
								<div style="float: left;width:500px;height: 80px;margin-left: 30px;margin-top:10px;border: 1px solid #cdcdcd;border-radius:3px;">
									<font style="font-family:黑体;color: #FF4040;font-size: 22px;">会员安全性</font><br>
									<font style="font-family:黑体;font-size: 16px;">缘都婚恋所有注册会员均经过身份认证，及婚姻状态、学历、收入等多维度认证，使会员恋爱交友安全无忧。</font>
								</div>
							</div>
							<div style="width: 100%;height: 100px;margin-top: 30px;">
								<div style="float: left;width: 105px;height: 100px;margin-left: 20px;">
									<img alt="" src="resources/images/privilege14.jpg">
								</div>
								<div style="float: left;width:500px;height: 80px;margin-left: 30px;margin-top:10px;border: 1px solid #cdcdcd;border-radius:3px;">
									<font style="font-family:黑体;color: #FF4040;font-size: 22px;">隐私保障</font><br>
									<font style="font-family:黑体;font-size: 16px;">会员信息严格保密，未经本人允许绝不外泄。</font>
								</div>
							</div>
							<div style="width: 100%;height: 100px;margin-top: 30px;">
								<div style="float: left;width: 105px;height: 100px;margin-left: 20px;">
									<img alt="" src="resources/images/privilege14.jpg">
								</div>
								<div style="float: left;width:500px;height: 80px;margin-left: 30px;margin-top:10px;border: 1px solid #cdcdcd;border-radius:3px;">
									<font style="font-family:黑体;color: #FF4040;font-size: 22px;">线下活动</font><br>
									<font style="font-family:黑体;font-size: 16px;">缘都婚恋平台定期组织多种线下交友活动、高端派对、企业联谊等活动，帮助会员尽快找到属于自己的另一半。</font>
								</div>
							</div>
							<div style="width: 100%;height: 100px;margin-top: 30px;">
								<div style="float: left;width: 105px;height: 100px;margin-left: 20px;">
									<img alt="" src="resources/images/privilege14.jpg">
								</div>
								<div style="float: left;width:500px;height: 80px;margin-left: 30px;margin-top:10px;border: 1px solid #cdcdcd;border-radius:3px;">
									<font style="font-family:黑体;color: #FF4040;font-size: 22px;">高服务质量</font><br>
									<font style="font-family:黑体;font-size: 16px;">在服务过程中，您对我们的工作有任何的不满，即可拨打vip服务监察客服电话进行投诉，我们会对您的反映进行核实并及时处理，同时，服务监察也会定期针对用户的满意度主动进行电话回访。</font>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				style="float: right;width: 290px;height: 20px;background-color: red;text-align: center;">
				<strong> 他/她最近开通了VIP业务 </strong>
			</div>
			<div
				style="float: right;width: 290px;height: 650px;background-color: green;text-align: center;">
				会员列表展示
			</div>
			<div style="float: left;">
				<div class="Truelove">
					<font style="color: #FF4040;font-size: 22px;">缘都红娘具服务有哪些特色</font>
				</div>
				<div class="Privilege">
					<div
						style="width: 100%;height: 70px;text-align: center;">
						<div id="no1" onmouseover="showRed1()"
							class="HongniangServiceDivRed" style="margin-left:10px;">
							<br>
							<span style="font-size: 16px;">1</span> <br>100%真实会员
						</div>
						<div id="no2" onmouseover="showRed2()"
							class="HongniangServiceDivWhite">
							<br>
							<span style="font-size: 16px;">2</span><br> 红娘一对一服务
						</div>
						<div id="no3" onmouseover="showRed3()"
							class="HongniangServiceDivWhite">
							<br>
							<span style="font-size: 16px;">3</span><br> 婚恋/心理咨询
						</div>
						<div id="no4" onmouseover="showRed4()"
							class="HongniangServiceDivWhite">
							<br>
							<span style="font-size: 16px;">4</span><br> 个人形象设计
						</div>
						<div id="no5" onmouseover="showRed5()"
							class="HongniangServiceDivWhite">
							<br>
							<span style="font-size: 16px;">5</span><br> 完善的监督体系
						</div>
					</div>
					<div style="width: 100%;height:600px;">
						<div id="first" style="display: block;">
							<div style="width: 100%;height: 250px;">
								<br>100%真实会员<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn1.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">所有会员均经过身份、婚姻、学历、收入、职业等多维度认证，保证会员信息绝对真实有效</font></p>
								</div>
							</div>
							<hr style="border: 1px dashed #999999;">
							<div>
								<div
									style="width: 200px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn12.jpg">
								</div>
								<div
									style="width: 400px;height: 200px;margin-left:10px;float: left;">
									<p style="font-family: 黑体;font-size: 14px;color: #AAAAAA">&nbsp;&nbsp;女孩小宓很有才情，然而在感情史上却是一片空白。怀揣着爱情的梦想，她找到了缘都婚恋红娘。
										红娘发现小宓的条件非常优秀， 也理解她对另一半的高要求， 只是小宓欠缺和异性相处的技巧。 红娘努力消除小宓心里的障碍，
										制定了服务期内适合小宓的征婚计划， 并给小宓分析哪种类型的男士更适合她， 沟通哪些话题能够增进男士对她的好感等等。
										在交往过程中，红娘用专业的婚恋经验从旁指导小宓， 为她指引方向。在红娘的鼓励下，小宓终于等到了她生命中的Mr.Right。
								</div>
							</div>
						</div>
						<div id="second" style="display: none;">
							<div style="width: 100%;height: 250px;">
								<br>红娘一对一服务<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn2.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">所有红娘均经过系统化的培训，从事红娘行业多年，经验丰富。红娘会根据您的感情经理，择偶方向为您分配专属红娘</font></p>
								</div>
							</div>
							<hr style="border: 1px dashed #999999;">
							<div>
								<div
									style="width: 200px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn22.jpg">
								</div>
								<div
									style="width: 400px;height: 200px;margin-left:10px;float: left;">
									<p style="font-family: 黑体;font-size: 14px;color: #AAAAAA">&nbsp;&nbsp;林小姐，年轻漂亮、独立，但在别人眼中却是一大龄剩女。林小姐说自己来缘都婚恋，一是父母的压力，二是自己也想有个可以依靠的肩膀。林小姐问红娘，自己在属相籍贯虽然都有要求，但北京有好多男士符合自己的要求，该怎么选，选错了怎么办？红娘告诉她，能够有人选是非常好的开始，如果有自己中意的对象，那就跟着自己的心走，可以从工作、收入、家庭等基本情况着手分析谁的条件最合适自己，看对方和自己的契合度，只有多与对方相处，才能判断谁最适合。最终她和其中一位男士沟通愉快，恋情进展也很顺利。
								</div>
							</div>
						</div>
						<div id="third" style="display: none;">
							<div style="width: 100%;height: 250px;">
								<br>婚恋/心理咨询<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn3.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">缘都红娘会对您在感情生活中遇到的困扰给予疏导，可为您提供婚恋指导及心理咨询服务</font>
									</p>
								</div>
							</div>
							<hr style="border: 1px dashed #999999;">
							<div>
								<div
									style="width: 200px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn32.jpg">
								</div>
								<div
									style="width: 400px;height: 200px;margin-left:10px;float: left;">
									<p style="font-family: 黑体;font-size: 14px;color: #AAAAAA">&nbsp;&nbsp;知书达理的吴小姐，在工作上非常出色，来到缘都婚恋，选择的都是优秀的男士。吴小姐觉得感情是顺理成章的事情，工作繁忙的她很少有时间和红娘沟通。经过一段时间后，吴小姐问红娘，为什么没有男士联系她。带着疑问红娘询问了男士。男士说，我给她打过电话，但她从来没联系过我，我想她并不喜欢我。红娘这才明白，原来他们都对彼此有好感，但都下意识地自我保护，在原地等待对方主动。红娘告诉吴小姐，每个人时刻面临着选择与被选择，有些男人属于感情内敛型，如果是合适的人选，一定要好好把握。吴小姐当即领悟，于是跟男士表明了自己的想法，属于他们的幸福开始了。
								</div>
							</div>
						</div>
						<div id="forth" style="display: none;">
							<div style="width: 100%;height: 250px;">
								<br>个人形象设计<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn4.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">专业的形象设计，为您提供形象设计，约会指导，帮助您更好的赢得异性的青睐。</font></p>
								</div>
							</div>
							<hr style="border: 1px dashed #999999;">
							<div>
								<div
									style="width: 200px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn42.jpg">
								</div>
								<div
									style="width: 400px;height: 200px;margin-left:10px;float: left;">
									<p style="font-family: 黑体;font-size: 14px;color: #AAAAAA">&nbsp;&nbsp;女孩小瑞希望找一个有责任心、疼爱自己的人，她在珍爱网遇到了一个男孩，彼此喜欢。红娘让小瑞和男孩出来见见面，增进对彼此的了解。小瑞很为难，因为男孩从没有约她。红娘鼓励小瑞主动踏出第一步，并针对见面时间、穿着打扮、沟通话题提供了很多建议。小瑞虽然觉得害羞，但还是想好好把握机会，没想到男孩竟主动约她一起去摘草莓，小瑞欣然前往。这次约会进行得非常顺利，小瑞发现男孩很细心，两人也有很多共同点。就是这次美好的约会，让他们最终牵手在一起。
								</div>
							</div>
						</div>
						<div id="fifth" style="display: none;">
							<div style="width: 100%;height: 250px;">
								<br>完善的监督体系<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn5.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">如果在红娘的工作过程中您有任何的不满，即可拨打服务监察客服电话进行反馈和投诉。</font></p>
								</div>
							</div>
							<hr style="border: 1px dashed #999999;">
							<div>
								<div
									style="width: 200px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn52.jpg">
								</div>
								<div
									style="width: 400px;height: 200px;margin-left:10px;float: left;">
									<p style="font-family: 黑体;font-size: 14px;color: #AAAAAA">&nbsp;&nbsp;28岁在青岛工作的王先生，和缘都婚恋上心仪的她见过几次面，双方对彼此的印象都挺不错，就是进展非常缓慢。没想到经过一段时间相处后，对方跟王先生说“我们不合适，祝你幸福。”王先生急坏了，赶紧找红娘帮忙。红娘联系了女方，女孩说开始确实对王先生挺有好感的，后来觉得他并不是个浪漫的人。红娘告诉女孩，好女人像一所学校，只要这个男人本质是好的，不妨给他也给自己一个幸福的机会。红娘也建议王先生，男人不光要给女方充实的安全感，也要让她开心快乐，偶而的浪漫能让两人的感情更进一步。王先生听取了红娘的建议，最后终于抱得美人归。
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				style="float: right;width: 290px;height: 40px;background-color: red;text-align: center;">
				<strong> 会员说 </strong>
			</div>
			<div
				style="float: right;width: 290px;height:530px;background-color: green;text-align: center;">
				会员说列表展示逐条滑动</div>
			<div class="EnjoyService">
				<font style="color: #FF4040;font-size: 22px;">VIP 尊享服务</font><br>
				<div style="width: 100%;height: 100%;margin-top: 10px; border: 1px solid #AAAAAA;background: white;">
					<div style="margin-left: 20px;">
						<p>
							<font style="font-family: 黑体;">如何保证会员的信息真实有效?</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">缘都婚恋注册信息经多重审核，用户携带身份证件前往实体店，人证一致方可认证通过。同时，服务顾问也会对会员进行婚姻状态、收入、学历等维度的核实与认证，保证每一位会员的真实。</font><br><br>
							<font style="font-family: 黑体;">如何保障会员隐私不被泄露?</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">您的信息将被严格保存在缘都婚恋数据库中，在服务过程中，未经本人允许，红娘无权将您的信息提供给他人。缘都婚恋为您的隐私保驾护航。</font><br><br>
							<font style="font-family: 黑体;">成为缘都婚恋一对一服务会员后，红娘如何服务?<br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">成为缘都婚恋一对一服务会员后，红娘将根据您的择偶意向为您精准推荐，在征得双方同意后，安排见面，并进一步撮合，如果牵手失败，红娘将在服务期内继续为您服务，为您推荐其他会员。</font><br><br>
							<font style="font-family: 黑体;">如何找到让我满意的伴侣?</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">结合丰富的行业积累，缘都婚恋拥有众多线上注册会员及线下报名会员，可以满足您对于伴侣的不同要求，同时服务红娘也会与您沟通交流，帮您分析合适的伴侣类型。</font><br><br>
							<font style="font-family: 黑体;">如何保证服务质量?</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">在服务过程中，如果您对我们的服务有任何的不满，即可拨打服务监察客服电话进行投诉，我们会对您的反映进行核实并及时反馈。同时，服务监察也会定期针对用户满意度进行电话回访。</font><br><br>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div style="width:1350px;height:96px;text-align: center;">
			<img alt="" src="resources/images/Cherish.jpg">
		</div>
		<script>
			$(document).ready(function() {
				$('.hot-event').nav({
					t : 99999999, //轮播时间
					a : 1500
				//过渡时间
				});
			});
		</script>
		<!--新轮播end-->
	</div>
</body>
</html>