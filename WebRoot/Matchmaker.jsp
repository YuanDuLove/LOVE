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
					alt="" src="resources/images/matchoff.png" style="line-height: 40px;height: 40px"></a></li>
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
					<font style="color: #FF4040;font-size: 22px;">VIP 尊享特权</font>
					<font style="font-size: 14px;">排名靠前 沟通自由无限</font>
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
									<font style="font-family:黑体;color: #FF4040;font-size: 22px;">恋爱保障</font><font style="font-family:黑体;color: #FF4040;font-size: 14px;">(未成功恋爱)</font><br>
									<font style="font-family:黑体;font-size: 16px;">我们承诺，免费延长红娘服务期1个月。 为您解忧，无需担心错过遇见对的Ta而烦恼。</font>
								</div>
							</div>
							<div style="width:100%;height: 100px;margin-top: 30px;">
								<div style="float: left;width: 105px;height: 100px;margin-left: 20px;">
									<img alt="" src="resources/images/privilege15.jpg">
								</div>
								<div style="float: left;width:500px;height: 80px;margin-left: 30px;margin-top:10px;border: 1px solid #cdcdcd;border-radius:3px;">
									<font style="font-family:黑体;color: #FF4040;font-size: 22px;">结婚保障</font><font style="font-family:黑体;color: #FF4040;font-size: 14px;">(成功恋爱)</font><br>
									<font style="font-family:黑体;font-size: 16px;">额外赠送，每月1次（一年内）的专业婚恋咨询服务。为您分析婚恋情感难题、家庭人际关系调适和辅导。</font>
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
					<font style="color: #FF4040;font-size: 22px;">珍爱通，尊享服务</font>
				</div>
				<div class="Privilege">
					<div
						style="width: 100%;height: 70px;text-align: center;">
						<div id="no1" onmouseover="showRed1()"
							class="HongniangServiceDivRed" style="margin-left:10px;">
							<br>
							<span style="font-size: 16px;">1</span> 专案<br> 为您解决征婚起步难
						</div>
						<div id="no2" onmouseover="showRed2()"
							class="HongniangServiceDivWhite">
							<br>
							<span style="font-size: 16px;">2</span>筛选<br> 为您解决合适对象难
						</div>
						<div id="no3" onmouseover="showRed3()"
							class="HongniangServiceDivWhite">
							<br>
							<span style="font-size: 16px;">3</span>牵线<br> 为您解决传情达意难
						</div>
						<div id="no4" onmouseover="showRed4()"
							class="HongniangServiceDivWhite">
							<br>
							<span style="font-size: 16px;">4</span>约见<br> 为您解决顺利约会难
						</div>
						<div id="no5" onmouseover="showRed5()"
							class="HongniangServiceDivWhite">
							<br>
							<span style="font-size: 16px;">5</span>撮合<br> 为您解决深入交往难
						</div>
					</div>
					<div style="width: 100%;height:600px;">
						<div id="first" style="display: block;">
							<div style="width: 100%;height: 250px;">
								<br>第一步 专案 为您解决征婚起步难<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn1.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">深入解析状况</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">深入了解您的现状及需求，为您提供专业建议。</font><br><br>
										<font style="font-family: 黑体;font-size: 16px;">制作专属相亲档案</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">为您制作专属的相亲档案，助您找到幸福情缘。</font></p>
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
								<br>第二步：筛选为您解决适合对象难<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn2.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">1万高意向相亲会员</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">会员数量多且相亲目的一致，能大大提高相亲效率。</font><br><br>
										<font style="font-family: 黑体;font-size: 16px;">开辟沟通渠道为您寻找心仪对象</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">通过专业经验开辟沟通渠道为您寻找心仪对象。</font></p>
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
								<br>第三步：牵线为您解决传情达意难<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn3.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">主动发掘传递优点</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">主动发掘您的优点，并让对方获知您的独到之处。</font><br><br>
										<font style="font-family: 黑体;font-size: 16px;">帮您了解对方状况</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">帮助您了解对方的情况，使您的相亲更安心。</font><br><br>
										<font style="font-family: 黑体;font-size: 16px;">传情达意</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">恰当准确的将您的意向传递给对方，为您架起真爱的桥梁。</font>
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
								<br>第四步：约见为您解决顺利约会难<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn4.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">主动约见对象</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">帮您了解对方意向，适时代您约见并促成你们见面。</font><br><br>
										<font style="font-family: 黑体;font-size: 16px;">制作专属相亲档案</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">相亲约会指导</font></p>
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
								<br>第五步：撮合为您解决深入交往难<br><br>
								<div
									style="width: 250px;height: 200px;margin-left:10px;float: left;">
									<img alt="" src="resources/images/hn5.jpg">
								</div>
								<div
									style="width: 300px;height: 200px;margin-left:10px;float: left;">
									<p>
										<font style="font-family: 黑体;font-size: 16px;">积极主动推进交往</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">为您安排更多沟通和见面的机会，推动您的交往进程。</font><br><br>
										<font style="font-family: 黑体;font-size: 16px;">全程保驾护航</font><br>
										<font style="font-family: 黑体;color: #AAAAAA;font-size: 14px;">全程贴心关怀，积极调和您在过程中所遇到的困难。</font></p>
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
						<font style="font-family: 黑体;font-size: 16px;">如何升级珍爱通</font><font style="font-size: 13px;color: #aaaaaa">你可以采用以下两种方式开通</font><br>
						<img width="660px" alt="" src="resources/images/pic01.png">
						<p>
							<font style="font-family: 黑体;">为什么要购买珍爱通？</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">在繁忙的现代社会，
								每个人都意识到结束单身已成为迫在眉睫的事情。单身，不是您不够好，也不是<br>	没有优秀的异性，或许是您的圈子小，
								或许是你们都在原地等待心仪的对方。缘都婚恋成立一年，数千的<br>注册会员，本着成就天下姻缘的理念来筑造您的那一份幸福。
								珍爱通可以为您的姻缘提供更快捷更贴心<br>的服务，让您在缘都婚恋快速遇到心仪的那个人，在和异性的相识、相知、相见、
								相恋过程中获得红娘<br>的专业婚恋指导。</font><br><br>
							<font style="font-family: 黑体;">如何购买珍爱通？</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">①在此声明：缘都婚恋所有的支付方式只在缘都婚恋官方网站www.yuandulove.com公布，其他方式均无效；<br>
								②您可以点击“升级珍爱通”了解具体方式；<br>
								③如您在支付过程中有疑惑，可以打客服热线0536-7667-933,咨询您的专线红娘。</font><br><br>
							<font style="font-family: 黑体;">升级需要注意哪些事项？<br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">①为了您的支付安全，请您不要在网吧等公共场所的电脑上进行网上银行支付操作；<br>
								②温馨提醒：如您通过银行柜台、ATM机等方式办理，请您保留好银行底单，以便我们查账，及时为您办理<br>升级服务。</font><br><br>
							<font style="font-family: 黑体;">升级后能享受哪些待遇？</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">①升级后，同步为您开通网站自助功能，您可以给心仪的异性发邮件等；<br>
								②安排高级红娘一对一为您服务，根据您的自身情况和择偶要求，制定合适的相亲档案；<br>
								③和您一起筛选适合的相亲对象，并在您和心仪对象的沟通、见面阶段，给您专业的婚恋指导、牵线搭桥；<br>帮你们传情达意，协助你们了解交往过程中的障碍，知晓交往过程中的误会，指导你们寻求步入婚恋状态<br>的路径；<br>
								④征婚是个漫长且幸福的过程，您是主体，红娘全程协助您，请您及时把您的困惑告诉红娘，让红娘有机会<br>为你们的相识交往牵线搭桥，为你们的爱情保驾护航。</font><br><br>
							<font style="font-family: 黑体;">淘宝上的“珍爱通”能在缘都婚恋上使用吗？</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">近期在网上出现低价出售“珍爱通”的商家，此类商家是采用银行卡诈骗方式来为购买者升级“珍爱通”<br>的。现警方已对此类商家立案侦查。缘都婚恋在此提示每位会员，通过缘都婚恋官方网站购买“珍爱通”。<br>如您通过其他网站购买珍爱通，一经查出，您的珍爱通资格将被取消，所有损失由您本人承担，同时您还将<br>面临被追究刑事责任的风险。</font><br><br>
							<font style="font-family: 黑体;">使用珍爱通服务，需要注意什么事项？</font><br><br>
								<font style="font-family: 黑体;color: #404040;font-size: 14px;">①请您于升级珍爱通服务3日内验证您的有效证件；<br>
								②由于技术条件限制，缘都婚恋目前还无法为会员提供境外（中国大陆以外地区）电话沟通服务。如果您在<br>境外，请使用“珍爱通”的邮件、名片等自助功能，并通过邮件与您的红娘保持联系。</font><br><br>
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