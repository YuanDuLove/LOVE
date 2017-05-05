<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage="true"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="keywords" content="缘都婚恋,潍坊缘都婚恋,缘都婚恋服务平台">
<title>缘都婚恋服务平台</title>
<style type="text/css">
a{
	text-decoration:none;
}
body{
	background:white;
}
.iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;white-space:nowrap}
.iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

<script type="text/javascript">
	function showMemInfo(){
		window.location.href="userdata/showRegInfoAction.action";
	}
	
	function showMsgInfo(){
		window.location.href="showMsgAction.action";
	}
</script>

</head>

<body>
	<div style="width: 1350px;margin: 0 auto;">
		<div style="width: 1350px;height: 80px">
			<a href="homepage.jsp">
				<div
					style="margin-left:100px;background-image:url('resources/images/logo.png') ;width:442px;height: 85px;float: left;">
				</div>
			</a>
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
					alt="" src="resources/images/match.png" style="line-height: 40px;height: 40px"></a></li>
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
					alt="" src="resources/images/call.gif" style="line-height: 40px;height: 40px"></a></li>
	
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
		<div style="width: 1350px;height: 600px;margin: 0 auto;background: url('resources/images/bgimg32.png');">
		</div>
		<div style="width: 80%;height: 300px;margin: 0 auto;margin-top: 20px;">
			<div style="width: 33%;height: 100%;text-align: center;float: left;">
				<div style="width: 100%;height: 102px;text-align: center;">
					<img alt="" src="resources/images/bgimg33.png">
				</div>
				<div style="width: 100%;margin-top:10px;text-align: center;">
					<font style="font-size: 20px;font-family: 黑体;">公司地址</font><br><br>
					山东省潍坊市坊子区北海路与凤凰大街<br><br>
					交叉路口青年创业园B座802<br><br>
					邮编：261200<br>
				</div>
			</div>
			<div style="width: 33%;height: 100%;text-align: center;float: left;">
				<div style="width: 100%;text-align: center;">
					<img alt="" src="resources/images/bgimg34.png">
				</div>
				<div style="width: 100%;height: 102px;margin-top:10px;text-align: center;">
					<font style="font-size: 20px;font-family: 黑体;">联系电话</font><br><br>
					电话：0536-7667933<br><br>
					手机：13573650275<br><br>
				</div>
			</div>
			<div style="width: 33%;height: 100%;text-align: center;float: left;">
				<div style="width: 100%;height: 102px;text-align: center;">
					<img alt="" src="resources/images/bgimg35.png">
				</div>
				<div style="width: 100%;margin-top:10px;text-align: center;">
					<img width="150px" height="150px" alt="" src="resources/images/qrcode.png">
				</div>
			</div>
		</div>
		<div style="width: 1350px;height: 600px;margin: 0 auto;background: #F78E9D;">
			<div style="width:100%;height:60px;text-align:center;line-height:60px;font-size: 30px;">联系我们</div>
			<div style="width:90%;height:500px;margin: 0 auto;background: white">
				<div style="width: 25%;margin: 0 auto;margin-top:70px;float:left;text-align:center;">
					<img alt="" src="resources/images/bgimg36.png">
				</div>
				
				<div style="width: 30%;margin: 0 auto;margin-top:100px;text-align:center;float:left;">
					缘都婚恋(网址http://www.yuandulove.com)<br>
					以“走进缘都，牵手真爱”为己任。秉承“因<br>
					为专注，所以专业；因为真诚，所以可信”的<br>
					服务宗旨。
					<hr style="border: 1px dotted #cdcdcd;">
					<font style="font-size: 28px;">全国服务热线</font><br>
					<font style="font-size: 24px;">0536-7667933</font>
				</div>
				<div style="width: 40%;height: 80%;margin: 0 auto;margin-top:20px;margin-left:20px;float:left;border:#ccc solid 1px;" id="dituContent">
				</div>
			</div>
		</div>
		<div style="width: 1350px;height: 150px;background: #ffa7a7;">
			<div style="margin-left: 200px;font-size: 20px;">
				<br>
				地址：潍坊市坊子区北海路与凤凰街交叉路口青年创业园B座802<br>
				电话:0536-7667933<br>
				版权所有 潍坊智诺睿达网络科技有限公司
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(119.167533,36.6574);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"缘都婚恋服务中心",content:"我的备注",point:"119.167071|36.657414",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>

</html>
