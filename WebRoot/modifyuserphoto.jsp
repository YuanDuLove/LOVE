<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'modifyuserphoto.jsp' starting page</title>
  </head>
  
  <body>
    <!-- 上传文件表单定义 -->  
    <s:form action="upload1" method="post" enctype="multipart/form-data">  
        <tr>  
    <!-- 上传文件标签定义 -->  
    <td>上传文件:<s:file name="file"></s:file></td>  
    </tr>  
    <tr>  
    <td>再次上传文件:<s:file name="file"></s:file></td>  
    </tr>  
    <tr>  
    <td align="left"><s:submit name="submit" value="提交"></s:submit></td>  
    </tr>  
    </s:form>  
  </body>
</html>
