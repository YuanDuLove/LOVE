package com.promise.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.promise.service.ModifyUserPhotoService;
import com.promise.service.UploadPhotoService;
import com.promise.tools.ImageUtil;

public class UploadImgAction extends ActionSupport{
    private File image_file; //上传的文件
    private String filename; //文件名称
    private String imageContentType; //文件类型
    private String x1;//左上角横坐标
    private String y1;//左上角纵坐标
    private String w;//裁剪宽度
    private String h;//裁剪高度
    private UploadPhotoService service;
   
	
	public void setService(UploadPhotoService service) {
		this.service = service;
	}
	public String getX1() {
        return x1;
    }
    public void setX1(String x1) {
        this.x1 = x1;
    }
    public String getY1() {
        return y1;
    }
    public void setY1(String y1) {
        this.y1 = y1;
    }
    public String getW() {
        return w;
    }
    public void setW(String w) {
        this.w = w;
    }
    public String getH() {
        return h;
    }
    public void setH(String h) {
        this.h = h;
    }
    public File getImage_file() {
        return image_file;
    }
    public String execute() throws Exception{
    String realpath = ServletActionContext.getServletContext().getRealPath("/images");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
        if (image_file != null) {
        	
        	 BufferedImage bi = ImageIO.read(image_file);//获取原图
        	 int srcWidth = bi.getWidth();//获取原图宽度;
        	 int srcHeight = bi.getHeight();//获取原图高度
        	 System.out.println("宽度："+srcWidth);
        	 System.out.println("高度："+srcHeight);
            Date date = new Date();//获取当前时间
            imageContentType = filename.substring(filename.indexOf(".")+1,filename.length());//获取图片格式String，如png
            filename = sdf.format(date)+"_"+new Random().nextInt(100)+"."+imageContentType;//重命名原始图片
            File savefile = new File(new File(realpath), filename);//创建图片对象
            if (!savefile.getParentFile().exists())
                savefile.getParentFile().mkdirs();
            FileUtils.copyFile(image_file, savefile);//保存图片
            filename = "cuted_"+filename;//重命名剪裁后的图片
           // imageContentType = filename.substring(filename.indexOf(".")+1,filename.length());//获取图片格式String，如png
            
            //将坐标、宽高按照图片的缩放比例进行恢复
            x1 = String.valueOf((Integer.valueOf(x1)*srcWidth/500));
            y1 = String.valueOf((Integer.valueOf(y1)*srcHeight/(srcHeight*500/srcWidth)));
            w = String.valueOf(srcWidth *Integer.valueOf(w)/500);
            h = w;
            //调用图片剪裁方法
            ImageUtil.parseCutedImage(x1, y1, w, h, imageContentType,savefile.getPath(), new File(new File(realpath),filename).getPath());
            //保存成功信息
            ActionContext.getContext().put("message", "文件上传成功");  
//            String userPhotoSrc = new File(new File(realpath),filename).getPath();
            Map dto = new HashMap();
            Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
    		String userid = (String) userinfo1.get("ID");
    		dto.put("id", userid);
            dto.put("userphoto", filename);
            service.setMapDto(dto);
            boolean b = service.uploadImg();
        }
        return "success";
    }
    public void setImage_file(File image_file) {
        this.image_file = image_file;
    }
                                                                         
    public String getFilename() {
        return filename;
    }
    public void setFilename(String filename) {
        this.filename = filename;
    }
    public String getImageContentType() {
        return imageContentType;
    }
    public void setImageContentType(String imageContentType) {
        this.imageContentType = imageContentType;
    }
}