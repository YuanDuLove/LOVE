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

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="resources/css/video-js.css" rel="stylesheet" type="text/css">
 <script src="resources/js/video.js"></script>
 <script>
   videojs.options.flash.swf = "resources/video/video-js.swf";
 </script>
 <script>
    if (navigator.userAgent.indexOf('MSIE') >= 0){
        document.getElementById("videoDiv").innerHTML='<embed src="Wildlife.mp4" autostart="true" loop="true" width="640" height="480" >';
    }
 </script>
</head>

<body>
	<video id="my_video_1" class="video-js vjs-default-skin" controls="controls" muted autoplay="autoplay" loop="loop" preload="auto" width="640" height="480" data-setup="{}">
        <source src="resources\video\1.mp4" type="video/mp4"> 
    </video>


<!--
	<div style=" display:block; width:98%;">
		<p style="text-align: left">
			<object id="myPlayer" height="375" width="440"
				classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6">
				<param value="resources\video\Wildlife.wmv"
					name="URL" />
				<param value="1" name="rate" />
				<param value="0" name="balance" />
				<param value="" name="defaultFrame" />
				<param value="1" name="playCount" />
				<param value="0" name="autoStart" />
				<param value="0" name="currentMarker" />
				<param value="-1" name="invokeURLs" />
				<param value="" name="baseURL" />
				<param value="50" name="volume" />
				<param value="0" name="mute" />
				<param value="1" name="stretchToFit" />
				<param value="0" name="windowlessVideo" />
				<param value="-1" name="enabled" />
				<param value="-1" name="enableContextMenu" />
				<param value="0" name="fullScreen" />
				<param value="" name="SAMIStyle" />
				<param value="" name="SAMILang" />
				<param value="" name="SAMIFilename" />
				<param value="" name="captioningID" />
			</object>
		</p>
	</div>
	-->
</body>
</html>
