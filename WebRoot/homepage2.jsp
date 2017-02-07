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
<title>缘都婚恋:一个专注婚恋的网站</title>
<link rel="stylesheet" type="text/css"
	href="./resources/css/homecss.css">
	
	<style type="text/css">
.homeMemberDivHtml {
	overflow:hidden; 
	-ms-touch-action:auto;
	-ms-content-zooming:auto;
	width:1350px;
	height:650px;
	background:#fff;
}

#canvas {
	position:absolute;
	width:1350px;
	height:500px;
	background:#fff;
}
</style>

<script type="text/javascript" src="resources/js/ge1doot.js"></script>
<script type="text/javascript">
	
	function showMemInfo(){
		window.location.href="userdata/showRegInfoAction.action";
	}
	
	function showMsgInfo(){
		window.location.href="error.jsp";
	}

	function regUser(form) {
		var account = form.account.value;
		var pwd = form.pwd.value;
		if(account == null || account.length == 0){
			alert("请填写账号");
		} else if(account.length != 0 && (pwd == null || pwd.length == 0)){
			alert("请填写密码");
		} else if(account.length != 0 && pwd.length != 0){
			window.location.href = "loginAction.action?account=" + account + "&password="
				+ pwd;
		}
		
	}
	
	
"use strict";

(function () {
	/* ==== definitions ==== */
	var diapo = [], layers = [], ctx, pointer, scr, camera, light, fps = 0, quality = [1,2],
	// ---- poly constructor ----
	Poly = function (parent, face) {
		this.parent = parent;
		this.ctx    = ctx;
		this.color  = face.fill || false;
		this.points = [];
		if (!face.img) {
			// ---- create points ----
			for (var i = 0; i < 4; i++) {
				this.points[i] = new ge1doot.transform3D.Point(
					parent.pc.x + (face.x[i] * parent.normalZ) + (face.z[i] * parent.normalX),
					parent.pc.y +  face.y[i],
					parent.pc.z + (face.x[i] * parent.normalX) + (-face.z[i] * parent.normalZ)
				);
			}
			this.points[3].next = false;
		}
	},
	// ---- diapo constructor ----
	Diapo = function (path, img, structure) {
		// ---- create image ----
		this.img = new ge1doot.transform3D.Image(
			this, path + img.img, 1, {
				isLoaded: function(img) {
					img.parent.isLoaded = true;
					img.parent.loaded(img);
				}
			}
		);
		this.visible  = false;
		this.normalX  = img.nx;
		this.normalZ  = img.nz;
		// ---- point center ----
		this.pc = new ge1doot.transform3D.Point(img.x, img.y, img.z);
		// ---- target positions ----
		this.tx = img.x + (img.nx * Math.sqrt(camera.focalLength) * 20);
		this.tz = img.z - (img.nz * Math.sqrt(camera.focalLength) * 20);
		// ---- create polygons ----
		this.poly = [];
		for (var i = -1, p; p = structure[++i];) {
			layers[i] = (p.img === true ? 1 : 2);
			this.poly.push(
				new Poly(this, p)
			);
		}
	},
	// ---- init section ----
	init = function (json) {
		// draw poly primitive
		Poly.prototype.drawPoly = ge1doot.transform3D.drawPoly;
		// ---- init screen ----
		scr = new ge1doot.Screen({
			container: "canvas"
		});
		ctx = scr.ctx;
		scr.resize();
		// ---- init pointer ----
		pointer = new ge1doot.Pointer({
			tap: function () {
				if (camera.over) {
					if (camera.over === camera.target.elem) {
						// ---- return to the center ----
						camera.target.x = 0;
						camera.target.z = 0;
						camera.target.elem = false;
					} else {
						// ---- goto diapo ----
						camera.target.elem = camera.over;
						camera.target.x = camera.over.tx;
						camera.target.z = camera.over.tz;
						// ---- adapt tesselation level to distance ----
						for (var i = 0, d; d = diapo[i++];) {
							var dx = camera.target.x - d.pc.x;
							var dz = camera.target.z - d.pc.z;
							var dist = Math.sqrt(dx * dx + dz * dz);
							var lev = (dist > 1500) ? quality[0] : quality[1];
							d.img.setLevel(lev);
						}
					}
				}
			}
		});
		// ---- init camera ----
		camera = new ge1doot.transform3D.Camera({
			focalLength: Math.sqrt(scr.width) * 10,
			easeTranslation: 0.025,
			easeRotation: 0.06,
			disableRz: true
		}, {
			move: function () {
				this.over = false;
				// ---- rotation ----
				if (pointer.isDraging) {
					this.target.elem = false;
					this.target.ry = -pointer.Xi * 0.01;
					this.target.rx = (pointer.Y - scr.height * 0.5) / (scr.height * 0.5);
				} else {
					if (this.target.elem) {
						this.target.ry = Math.atan2(
							this.target.elem.pc.x - this.x,
							this.target.elem.pc.z - this.z
						);
					}
				}
				this.target.rx *= 0.9;
			}
		});
		camera.z  = -10000;
		camera.py = 0;
		// ---- create images ----
		for (var i = 0, img; img = json.imgdata[i++];) {
			diapo.push(
				new Diapo(
					json.options.imagesPath, 
					img, 
					json.structure
				)
			);
		}	
		// ---- start engine ---- >>>
		setInterval(function() {
			quality = (fps > 50) ? [2,3] : [1,2];
			fps = 0;
		}, 1000);
		run();
	},
	// ---- main loop ----
	run = function () {
		// ---- clear screen ----
		ctx.clearRect(0, 0, scr.width, scr.height);
		// ---- camera ----
		camera.move();
		// ---- draw layers ----
		for (var k = -1, l; l = layers[++k];) {
			light = false;
			for (var i = 0, d; d = diapo[i++];) {
				(l === 1 && d.draw()) || 
				(d.visible && d.poly[k].draw());
			}
		}
		// ---- cursor ----
		if (camera.over && !pointer.isDraging) {
			scr.setCursor("pointer");
		} else {
			scr.setCursor("move");
		}
		// ---- loop ----
		fps++;
		requestAnimFrame(run);
	};
	/* ==== prototypes ==== */
	Poly.prototype.draw = function () {
		// ---- color light ----
		var c = this.color;
		if (c.light || !light) {
			var s = c.light ? this.parent.light : 1;
			// ---- rgba color ----
			light = "rgba(" + 
				Math.round(c.r * s) + "," +
				Math.round(c.g * s) + "," + 
				Math.round(c.b * s) + "," + (c.a || 1) + ")";
			ctx.fillStyle = light;
		}
		// ---- paint poly ----
		if (!c.light || this.parent.light < 1) {
			// ---- projection ----
			for (
				var i = 0; 
				this.points[i++].projection();
			);
			this.drawPoly();
			ctx.fill();
		}
	}
	/* ==== image onload ==== */
	Diapo.prototype.loaded = function (img) {
		// ---- create points ----
		var d = [-1,1,1,-1,1,1,-1,-1];
		var w = img.texture.width  * 0.5;
		var h = img.texture.height * 0.5;
		for (var i = 0; i < 4; i++) {
			img.points[i] = new ge1doot.transform3D.Point(
				this.pc.x + (w * this.normalZ * d[i]),
				this.pc.y + (h * d[i + 4]),
				this.pc.z + (w * this.normalX * d[i])
			);
		}
	}
	/* ==== images draw ==== */
	Diapo.prototype.draw = function () {
		// ---- visibility ----
		this.pc.projection();
		if (this.pc.Z > -(camera.focalLength >> 1) && this.img.transform3D(true)) {
			// ---- light ----
			this.light = 0.5 + Math.abs(this.normalZ * camera.cosY - this.normalX * camera.sinY) * 0.6;
			// ---- draw image ----
			this.visible = true;
			this.img.draw();
			// ---- test pointer inside ----
			if (pointer.hasMoved || pointer.isDown) {
				if (
					this.img.isPointerInside(
						pointer.X,
						pointer.Y
					)
				) camera.over = this;
			}
		} else this.visible = false;
		return true;
	}
	return {
		// --- load data ----
		load : function (data) {
			window.addEventListener('load', function () {
				ge1doot.loadJS(
					"resources/js/imageTransform3D.js",
					init, data
				);
			}, false);
		}
	}
})().load({
	imgdata:[
		// north
		{img:'resources/images/i1.jpg', x:-1000, y:0, z:1500, nx:0, nz:1},
		{img:'resources/images/i2.jpg', x:0,     y:0, z:1500, nx:0, nz:1},
		{img:'resources/images/i3.jpg', x:1000,  y:0, z:1500, nx:0, nz:1},
		// east
		{img:'resources/images/i4.jpg', x:1500,  y:0, z:1000, nx:-1, nz:0},
		{img:'resources/images/i5.jpg', x:1500,  y:0, z:0, nx:-1, nz:0},
		{img:'resources/images/i6.jpg', x:1500,  y:0, z:-1000, nx:-1, nz:0},
		// south
		{img:'resources/images/i7.jpg', x:1000,  y:0, z:-1500, nx:0, nz:-1},
		{img:'resources/images/i8.jpg', x:0,     y:0, z:-1500, nx:0, nz:-1},
		{img:'resources/images/i9.jpg', x:-1000, y:0, z:-1500, nx:0, nz:-1},
		// west
		{img:'resources/images/i10.jpg', x:-1500, y:0, z:-1000, nx:1, nz:0},
		{img:'resources/images/i11.jpg', x:-1500, y:0, z:0, nx:1, nz:0},
		{img:'resources/images/i12.jpg', x:-1500, y:0, z:1000, nx:1, nz:0}
	],
	structure:[
		{
			// wall
			fill: {r:255, g:255, b:255, light:1},
			x: [-1001,-490,-490,-1001],
			z: [-500,-500,-500,-500],
			y: [500,500,-500,-500]
		},{
			// wall
			fill: {r:255, g:255, b:255, light:1},
			x: [-501,2,2,-500],
			z: [-500,-500,-500,-500],
			y: [500,500,-500,-500]
		},{
			// wall
			fill: {r:255, g:255, b:255, light:1},
			x: [0,502,502,0],
			z: [-500,-500,-500,-500],
			y: [500,500,-500,-500]
		},{
			// wall
			fill: {r:255, g:255, b:255, light:1},
			x: [490,1002,1002,490],
			z: [-500,-500,-500,-500],
			y: [500,500,-500,-500]
		},{
			// shadow
			fill: {r:0, g:0, b:0, a:0.2},
			x: [-420,420,420,-420],
			z: [-500,-500,-500,-500],
			y: [150, 150,-320,-320]
		},{
			// shadow
			fill: {r:0, g:0, b:0, a:0.2},
			x: [-20,20,20,-20],
			z: [-500,-500,-500,-500],
			y: [250, 250,150,150]
		},{
			// shadow
			fill: {r:0, g:0, b:0, a:0.2},
			x: [-20,20,20,-20],
			z: [-500,-500,-500,-500],
			y: [-320, -320,-500,-500]
		},{
			// shadow
			fill: {r:0, g:0, b:0, a:0.2},
			x: [-20,20,10,-10],
			z: [-500,-500,-100,-100],
			y: [-500, -500,-500,-500]
		},{
			// base
			fill: {r:32, g:32, b:32},
			x: [-50,50,50,-50],
			z: [-150,-150,-50,-50],
			y: [-500,-500,-500,-500]
		},{
			// support
			fill: {r:16, g:16, b:16},
			x: [-10,10,10,-10],
			z: [-100,-100,-100,-100],
			y: [300,300,-500,-500]
		},{
			// frame
			fill: {r:255, g:255, b:255},
			x: [-320,-320,-320,-320],
			z: [0,-20,-20,0],
			y: [-190,-190,190,190]
		},{
			// frame
			fill: {r:255, g:255, b:255},
			x: [320,320,320,320],
			z: [0,-20,-20,0],
			y: [-190,-190,190,190]
		},
		{img:true},
		{
			// ceilingLight
			fill: {r:255, g:128, b:0},
			x: [-50,50,50,-50],
			z: [450,450,550,550],
			y: [500,500,500,500]
		},{
			// groundLight
			fill: {r:255, g:128, b:0},
			x: [-50,50,50,-50],
			z: [450,450,550,550],
			y: [-500,-500,-500,-500]
		}
	],
	options:{
		imagesPath: ""
	}
});

</script>


</head>
<body>
	<div style="width: 1350px;margin: 0 auto;">
		<div style="width: 1350px;height: 80px">
			<a href="homepage.jsp">
				<div
					style="margin-left:100px;background-image:url('resources/images/logo.png') ;width:91px;height: 80px;float: left;">
				</div> </a>
			<div
				style="font-size: 24px;line-height: 80px;width: 800px;height: 80px;float: left;">1亿
				"会员" | "实名婚恋网开创者"只有爱无需等待</div>
			<!-- 
			<div style="width: 195px;height: 80px;float: left;">
				<img alt="" src="resources/images/top-bg.jpg">
			</div>
			 -->
		</div>
		<div
			style="width: 1350px;height: 60px;background-color: #703987;position:relative;">
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
			<div style="width: 1350px;height: 600px;text-align: center;">
				<div style="width:100%;height: 100px;padding-top: 80px;">
					<font style="font-family: 宋体;font-size: 28px;color: #404040">红娘服务</font><br><br>
					<font style="font-family: 黑体;font-family: 22px;color: #666666">在缘都，你可以得到什么？</font>
				</div>
				<div style="width: 100%;height: 380px;">
					<img alt="" src="resources/images/service1.jpg">
					<img alt="" src="resources/images/service2.jpg">
					<img alt="" src="resources/images/service3.jpg">
				</div>
			</div>
			<!-- 单身会员展示-->
			<div class="homeMemberDiv">
				<div style="width: 100%;height: 80px;padding-top: 50px;">
					<font style="font-family: 宋体;font-size: 28px;color: #404040">1亿单身用户的选择</font><br><br>
					<font style="font-family: 黑体;font-family: 22px;color: #666666">TA们都在寻爱，你还在等什么呢？</font>
				</div>
				<div class="homeMemberDivDiv">
					<div style="width: 225px;height: 300px;float: left;">
						<img id="img" width="225px" height="300px" alt="" src="resources/images/zxh.jpg">
					</div>
					<div style="width: 225px;height: 300px;float: left;">
						<div style="width: 225px;height: 150px;">
							<img id="img" style="float: left;width:112px;height:150px" alt="" src="resources/images/service1.jpg">
							<img id="img" style="float: left;width:112px;height:150px" alt="" src="resources/images/service2.jpg">
						</div>
						<div style="width: 225px;height: 150px;">
							<img id="img" style="float: left;width:112px;height:150px" alt="" src="resources/images/service3.jpg">
							<img id="img" style="float: left;width:112px;height:150px" alt="" src="resources/images/service1.jpg">
						</div>
					</div>
					<div style="width: 225px;height: 300px;float: left;">
						<img id="img" width="225px" height="300px" alt="" src="resources/images/zxh2.jpg">
					</div>
					<div style="width: 225px;height: 300px;float: left;">
						<div style="width: 225px;height: 150px;">
							<img id="img" style="float: left;width:112px;height:150px" alt="" src="resources/images/service1.jpg">
							<img id="img" style="float: left;width:112px;height:150px" alt="" src="resources/images/service2.jpg">
						</div>
						<div style="width: 225px;height: 150px;">
							<img id="img" style="float: left;width:112px;height:150px" alt="" src="resources/images/service3.jpg">
							<img id="img" style="float: left;width:112px;height:150px" alt="" src="resources/images/service1.jpg">
						</div>
					</div>
				</div>
			</div>
			 
			 <!--
			 <div class="homeMemberDivHtml">
				 	<div style="width: 100%;height: 80px;padding-top: 50px;text-align: center;">
						<font style="font-family: 宋体;font-size: 28px;color: #404040">1亿单身用户的选择</font><br><br>
						<font style="font-family: 黑体;font-family: 22px;color: #666666">TA们都在寻爱，你还在等什么呢？</font>
					</div>
					<canvas id="canvas">你的浏览器不支持HTML5画布技术，请使用谷歌浏览器。</canvas>
			 </div>
			 
			<div class="homeSuccessfulDiv">
				<div
					style="background-color: pink;width: 100%;height: 80px;font-size: 24px;padding-top: 30px;">成功牵手在今天</div>
				<div class="homeSuccessfulDivDiv"></div>
			</div>
			-->
			
			<div style="width: 1350px;height: 600px;text-align: center;">
				<div style="width:100%;height: 100px;padding-top: 80px;">
					<font style="font-family: 宋体;font-size: 28px;color: #404040">配套服务</font><br><br>
					<font style="font-family: 黑体;font-family: 22px;color: #666666">在缘都，你可以享受到的服务有哪些？</font>
				</div>
				<div style="width: 100%;height: 380px;">
					<img alt="" src="resources/images/wedding.jpg">
					<img alt="" src="resources/images/car.jpg">
					<img alt="" src="resources/images/hotel.jpg">
					<img alt="" src="resources/images/travel.jpg">
				</div>
			</div>
			<div class="homeMemberDivHtml">
				 	<div style="width: 100%;height: 80px;padding-top: 50px;text-align: center;">
						<font style="font-family: 宋体;font-size: 28px;color: #404040">成功案例</font><br><br>
						<font style="font-family: 黑体;font-family: 22px;color: #666666">TA们都找到了真爱，你还在等什么？!</font>
					</div>
					<canvas id="canvas">你的浏览器不支持HTML5画布技术，请使用谷歌浏览器。</canvas>
			 </div>
			
		</div>
	</div>
</body>
</html>
