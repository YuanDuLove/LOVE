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
<title>测试图片上传功能</title>
<link href="resources/css/jquery.Jcrop.min.css" rel="stylesheet"
	type="text/css" />
<script src="resources/js/jquery-1.9.1.min.js"></script>
<script src="resources/js/jquery.Jcrop.min.js"></script>
<script src="resources/js/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript">
function bytesToSize(bytes) {
    var sizes = ['Bytes', 'KB', 'MB'];
    if (bytes == 0) return 'n/a';
    var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
    return (bytes / Math.pow(1024, i)).toFixed(1) + ' ' + sizes[i];
};
function checkForm() {
    if (parseInt($('#w').val())) return true;
    $('.error').html('Please select a crop region and then press Upload').show();
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
    if (! rFilter.test(oFile.type)) {
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
        oImage.onload = function () { // onload event handler
            // display step 2
            $('.step2').fadeIn(500);
            // display some basic image info
            var sResultFileSize = bytesToSize(oFile.size);
            $('#filesize').val(sResultFileSize);
            $('#filename').val(oFile.name);      
            $('#filedim').val(oImage.naturalWidth + ' x ' + oImage.naturalHeight);
            // Create variables (in this scope) to hold the Jcrop API and image size
            var jcrop_api, boundx, boundy;
            // destroy Jcrop if it is existed
            if (typeof jcrop_api != 'undefined')
                jcrop_api.destroy();
            // initialize Jcrop
            $('#preview').Jcrop({
                minSize: [32, 32], // min crop size
                aspectRatio : 1, // keep aspect ratio 1:1
                bgFade: true, // use fade effect
                bgOpacity: .3, // fade opacity
                onChange: updateInfo,
                onSelect: updateInfo,
                onRelease: clearInfo
            }, function(){
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

</script>
</head>

<body>
	<div class="demo" style=" margin-top:60px;">
		<div class="bheader">
			<h2>i&mdash;&mdash;图像上传表单&mdash;&mdash;</h2>
		</div>
		<div class="bbody">
			<!-- upload form -->
			<form id="upload_form" enctype="multipart/form-data" method="post"
				action="manage/upload" onsubmit="return checkForm()">
				<!-- hidden crop params -->
				<input type="text" id="x1" name="x1" /> <input type="hidden"
					id="y1" name="y1" /> <input type="hidden" id="x2" name="x2" /> <input
					type="hidden" id="y2" name="y2" />
				<h2>第一步:请选择图像文件</h2>
				<div>
					<input type="file" name="image_file" id="image_file"
						onchange="fileSelectHandler()" />
				</div>
				<div class="error"></div>
				<div class="step2">
					<h2>请鼠标圈选需要截图的部位,然后按上传</h2>
					<img id="preview" />
					<div class="info">
						<label>文件大小</label> <input type="text" id="filesize"
							name="filesize" /> <label>文件名</label> <input type="text"
							id="filename" name="filename" /> <label>图像尺寸</label> <input
							type="text" id="filedim" name="filedim" /> <label>宽度</label> <input
							type="text" id="w" name="w" /> <label>高度</label> <input
							type="text" id="h" name="h" />
					</div>
					<input type="submit" value="上传" />
				</div>
			</form>
		</div>
	</div>
	<div style="text-align:center;clear:both">
		<br>
	</div>
</body>
</html>
