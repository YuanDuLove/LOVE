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
	href="./resources/css/userphotocss.css">
<link href="resources/css/jquery.Jcrop.min.css" rel="stylesheet"
	type="text/css" />
<style type="text/css">

a{
	text-decoration:none;
}
body{
	background-image: url("resources/images/bg.jpg");
}
</style>
<script src="resources/js/jquery-1.9.1.min.js"></script>
<script src="resources/js/jquery.Jcrop.min.js"></script>
<script src="resources/js/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript">

	var jcrop_api, boundx, boundy;

	function bytesToSize(bytes) {
		var sizes = [ 'Bytes', 'KB', 'MB' ];
		if (bytes == 0)
			return 'n/a';
		var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
		return (bytes / Math.pow(1024, i)).toFixed(1) + ' ' + sizes[i];
	};
	function checkForm() {
		if (parseInt($('#w').val()))
			return true;
		$('.error').html('Please select a crop region and then press Upload')
				.show();
		return false;
	};
	// 更新裁切的图片
	function updateInfo(e) {
		$('#x1').val(e.x);
		$('#y1').val(e.y);
		$('#x2').val(e.x2);
		$('#y2').val(e.y2);
		$('#w').val(e.w);
		$('#h').val(e.h);
	};
	// clear info by cropping (onRelease event handler)
	function clearInfo() {
		$('.info #w').val('');
		$('.info #h').val('');
	};
	function fileSelectHandler() {
		// get selected file
		var oFile = $('#image_file')[0].files[0];
		// hide all errors
		$('.error').hide();
		// check for image type (jpg and png are allowed)
		var rFilter = /^(image\/jpeg|image\/png)$/i;
		if (!rFilter.test(oFile.type)) {
			$('.error').html('请选择图像文件(jpeg/png)').show();
			return;
		}
		// check for file size
		if (oFile.size > 10240 * 1024) {
			$('.error').html('文件太大，请选择一张稍小点的图片').show();
			return;
		}
		// preview element
		var oImage = document.getElementById('preview');
		// prepare HTML5 FileReader
		var oReader = new FileReader();
		oReader.onload = function(e) {
			// e.target.result contains the DataURL which we can use as a source of the image
			oImage.src = e.target.result;
			oImage.onload = function() { // onload event handler
				// display step 2
				$('.step2').fadeIn(500);
				// display some basic image info
				var sResultFileSize = bytesToSize(oFile.size);
				$('#filesize').val(sResultFileSize);
				$('#filename').val(oFile.name);
				$('#filedim').val(
						oImage.naturalWidth + ' x ' + oImage.naturalHeight);
				// Create variables (in this scope) to hold the Jcrop API and image size
				
				// destroy Jcrop if it is existed
				if (typeof jcrop_api != 'undefined')
					jcrop_api.destroy();
				// initialize Jcrop
				$('#preview').Jcrop({
					minSize : [ 32, 32 ], // min crop size
					aspectRatio : 1, // keep aspect ratio 1:1
					bgFade : true, // use fade effect
					bgOpacity : .3, // fade opacity
					setSelect : [0,0,200,200],
					onChange : updateInfo,
					onSelect : updateInfo,
					onRelease : clearInfo
				}, function() {
					// use the Jcrop API to get the real image size
					var bounds = this.getBounds();
					boundx = bounds[0];
					boundy = bounds[1];
					// Store the Jcrop API in the jcrop_api variable
					jcrop_api = this;
				});
			};
		};
		// Download by http://www.codefans.net
		// read selected file as DataURL
		oReader.readAsDataURL(oFile);
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
		<div
			style="width: 1000px;height: 1000px;margin: 0 auto;background: white;margin-top: 10px;border: 1px solid #cdcdcd">
			<div
				style="float: left;width: 75%;height:100%;border-right: 1px solid #cdcdcd">
	
				<div style="width: 100%;height: 28px;line-height: 28px;">
					<h2>上传形象照</h2>
				</div>
				<div style="margin-top: 20px">
					<font style="font-size: 18px;color: black;font-family: 黑体;">请选择清晰美观的个人近照，作为您的形象照。</font><br>
					<font style="font-size: 16px;color: #333;font-family: 黑体;">·确保五官清晰，正面微侧皆可。勿上传裸露、模糊或他人照片</font><br>
					<font style="font-size: 16px;color: #333;font-family: 黑体;">·可在框中通过剪切选取自己满意的图片</font><br>
				</div>
				<hr>
				<div>
					<form id="upload_form" enctype="multipart/form-data" method="post"
						action="modifyphoto" onsubmit="return checkForm()">
						<!-- hidden crop params -->
						<input type="hidden" id="x1" name="x1" /> <input type="hidden"
							id="y1" name="y1" /> <input type="hidden" id="x2" name="x2" /> <input
							type="hidden" id="y2" name="y2" />
	
						<div
							style="width: 211px;height: 61px;background-image: url('resources/images/select.png');cursor: pointer;position: relative;">
							<input type="file"
								style="position: absolute;width: 211px;height: 61px;filter: alpha(opacity=0);-moz-opacity: 0;opacity: 0;cursor: pointer;"
								name="image_file" id="image_file" onchange="fileSelectHandler()" />
						</div>
						<div class="step2">
							<h3>请鼠标圈选需要截图的部位,然后按上传</h3>
							<img id="preview" width="500px"/>
							<div class="info">
								<input type="hidden" id="filesize" name="filesize" /> <input
									type="hidden" id="filename" name="filename" /> <input
									type="hidden" id="filedim" name="filedim" /> <input
									type="hidden" id="w" name="w" /> <input type="hidden" id="h"
									name="h" />
							</div>
							<input type="submit" value="上传"
								style="margin-left:5px;width: 120px;height: 40px;background:#FF3E96;border:1px solid #FF3E96;border-radius:3px;font-size: 18px;color: white;" />
						</div>
					</form>
				</div>
			</div>
			<div style="float: left;width: 24%;height:100%;">
				<div style="margin-left: 20px;margin-top: 50px">
					<img alt="" src="resources/images/rightImg2.png"> 正确示范 <img
						alt="正确示范" src="resources/images/rightImg.jpg">
				</div>
				<div style="margin-left: 20px;margin-top: 20px">
					<img alt="" src="resources/images/wrongImg2.png"> 错误示范 <img
						alt="错误示范" src="resources/images/wrongImg.jpg">
				</div>
			</div>
		</div>
	</div>
</body>
</html>
