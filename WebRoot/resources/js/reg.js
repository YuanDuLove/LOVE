
/**注册的js*/
//账号
var accontRegex = /^1\d{10}$/;
//图形码
var codeRegex = /^.*[a-zA-Z]$/;
//验证码
var vercodeRegex =/ ^[0-9]{6}$/;
//密码
var pwdRegex = /^[\w]{6,16}$/;
//昵称
var nicknameRegex = /^(?!_)(?!.*?_$)[a-zA-Z0-9_\u4e00-\u9fa5]+$/;
//身高
var heightRegex = /^\d{3}$/;
//姓名
var usernameRegex = /^[\u4e00-\u9fa5]{2,5}$/; 



function validateForm(){//定义validateForm方法用于客户端校验
	var flag = true;
	//校验账号
	var accontNode = byId("accont");//获得ID值为accont的节点对象
	var accont  = accontNode.value;//即用户在accont文本框内填写的值。 
	if(!accontRegex.test(accont)){//验证获得到的值是否符合正则表达式 
			byId("accont_span").style.color = "red";//如果不符合，则将ID值为accont_span的节点对象内容变为红色

			flag = false;  //返回false，不提交 
	}
	//校验图形码
	var codeNode = byId("code");
	var code = codeNode.value;
	if(code != null && code != ""){
			//byId("code_span").style.color = "red";
			flag = false;
	}
	//校验验证码
	var vercodeNode = byId("vercode");
	var vercode = vercodeNode.value;
	if(!vercodeRegex.test(vercode)){
		byId("vercode_span").style.color = "red";
		flag = false;
	}
	//校验密码
	var pwdNode = byId("pwd");
	var pwd = pwdNode.value;
	if(!pwdRegex.test(pwd)){
		byId("pwd_span").style.color = "red";
		flag = false;
	}
	//确认密码
	var repwdNode = byId("repwd");  //获得ID值为repwd的节点对象  
	var repwd = repwdNode.value;  

	if(pwd !=repwd){  
		byId("repwd_span").style.display = "block";  
		flag = false;  
	}else if(!pwdRegex.test(repwd)){  
		byId("repwd_span").style.display = "block";  
		flag = false;  
	}else{  
		byId("repwd_span").style.display = "none";  
    
	}  
	//校验姓名  
	var usernameNode = byId("realName");  //获得ID值为realName的节点对象  
	var username = usernameNode.value;  
	if(!usernameRegex.test(username)){  
		byId("username_span").style.color = "red";  
		flag = false;  
	}  

	//校验昵称
	var nicknameNode = byId("nickname");
	var nickname = nicknameNode.value;
	alert(nickname);
	if(!nicknameRegex.test(nickname)){
		byId("nickname_span").style.color = "red";
		flag = false;
	}
	//校验身高
	var heightNode = byId("height");
	var height = heightNode.value;
	if(!heightRegex.test(height)){
		byId("height_span").style.display = "block"
	}
	//校验地区
	/**var localNode = byId("local");
	var local = localNode.value;
	if("��ѡ��"==local){
	byId("local_span").style.color = "red";
	flag = false;
	}*/
	//校验生日
	/**var birthdayNode = byId("birthday");
	var birthday = birthdayNode.value;
	if("��ѡ��"== birthday){
	byId("birthday_span").style.color = "red";
	flag = false;
	}*/
  return flag;
}
 function byId(id){  //自定义方法，用于获取传递过来的ID值对应的节点对象  
            return document.getElementById(id);  
        } 
  //校验账号
function checkAccont(node){//当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范
var accont = node.value;
//document.write(accont.length);
if(!accontRegex.test(accont)){//验证是否符合节点对应的正则表达式 
   
	 byId("accont_span").style.color= "red";//不符合  变成红色
}else{
     byId("accont_span").style.display="none";//符合  消失
   //accontOnly(accont);
}
}
/var xmlHttp;//Ajax核心对象名称
/**function createXMLHttp(){//创建XMLHttpRequest核心对象
if(window.XMLHttpRequest){//判断浏览器类型
xmlHttp = new XMLHttpRequest();
}else{
xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
}
}
//验证手机号的唯一性
function accontOnly(accont){
	createXMLHttp();
	//设置一个请求，通过地址重写的方式将accont传递到JSP中

	xmlHttp.open("POST", "checkServlet?accont=" + accont,"true");
	//设置请求完成后处理的回调函数
	xmlHttp.onreadystatechange = accontOnlyCallback;
	xmlHttp.send(null);
	byId("accont_span").innerHTML = "正在验证";
}
function accontOnlyCallback(){//定义回调函数
if(xmlHttp.readyState == 4){//数据返回完毕
 if(xmlHttp.status == 200){//HTTP操作正常
	var text = xmlHttp.responseText;//接收返回数据
		if(text == "true"){//？接收数据库返回来的信息
			flag = false;//找到了，无法提交注册表单
					byId("accont_span").innerHTML = "手机号已注册";
	}else{
			flag = true;//没有找到。可以提交注册表单
			byId("accont_span").innerHTML = "手机号注册成功";
				}
			}
		}
	}*/
//校验图形码
function checkCode(node){
var code = codeNode.value;
if(!codeRegex.test(code)){
byId("code_span").style.color = "red";
}else{
  byId("code_span").style.display = "none";
}
}
//校验验证码
function checkVercode(node){
var vercode = vercodeNode.value;
if(!vercodeRegex.test(vercode)){
byId("vercode_span").style.color = "red";
}else{
byId("vercode_span").style.display = "none";
}
}
 //校验密码
function checkPwd(node){ 
 var pwd = node.value;  
 //document.write(pwd.length);
 if (!pwdRegex.test(pwd)) {  
 byId("pwd_span").style.color = "red";  
 }  
  else {  
   byId("pwd_span").style.display = "none";  
 }  
 }  
//校验确认密码
function checkRepwd(node){
	var repwd = node.value;
	//document.write(repwd.length);
    var pwd = byId("pwd").value; 
	if(pwd !=repwd){
		byId("repwd_span").style.display = "block";
	}
	else if(!pwdRegex.test(repwd)){  
        byId("repwd_span").style.display = "block";  
	}
	else{  
        byId("repwd_span").style.display = "none" ;
    }  
	//return false;
}
//校验姓名
function checkUsername(node){ //当鼠标离开节点时调用此方法，验证节点内容是否符合注册规范  
    
    var username = node.value;  //得到传递过来的节点对象的值  
    if(!usernameRegex.test(username)){  //验证是否符合节点对应的正则表达式  
        byId("username_span").style.color = "red"; //不符合，相应内容变成红色  
    }else{  
        byId("username_span").style.display = "none";
    }  
}  


 //校验昵称
 function checkNickname(node){
var nickname = node.value;
//document.write(nickname.length);
if(nicknameRegex.test(nickname)){
   byId("nickname_span").style.display = "none";
}else{
 byId("nickname_span").style.color = "red";
}
}  
 //校验身高
 function checkHeight(node){
	 var height =node.value;
	 
	 if(heightRegex.test(height)){
		 byId("height_span").style.display ="none";
	 }else{
		 byId("height_span").style.display = "block";
	 }
 }
//校验地区
 /**function checkLocal(node){ 
 var local = node.value;  
 if("��ѡ��" == province){  
  byId("local_span").style.color = "red";  
 }else{  
  byId("local_span").style.color = "green";  
  }  
  } */
  //校验生日
 function checkBirthday(node){   
 var birthday = node.value;  
 if(birthday.value ==""){  
  byId("birthday_span").style.color = "red";  //不符合，显示红色
 }else{  
  byId("birthday_span").style.display = "none";  //符合，消失
  }  
  } 
 //ͬ校验条款
 /**function agree(){
 if(document.getElementById('pc').checked){
  document.getElementById('tj').disabled=false;
 // alert("�빴ѡԵ����������");
 }else{
  // document.getElementById('tj').disabled="disabled";
	alert("�빴ѡԵ����������");
  } 
  }*/
 //验证注册
function checkbutton(){
	
	if(accont.value == ""){
	 // alert("请输入您的手机号！");
	    document.form1.accont.focus();
	      return false;
     } 
    if(document.form1.code.value == ""){
		   document.form1.code.focus();
           return false;
     }
	if(document.form1.pwd.value==""){
		  // alert("请输入您的密码！");
		   document.form1.pwd.focus();
           return false;
	   }
	if(document.form1.repwd.value==""){
		 // alert("请输入您的确认密码");
		  doucument.form1.repwd.focus();
		  return false;
		  
	  }
	if(document.form1.username.value==""){
		  document.form1.username.focus();
		  return false;
	  }
	if(document.form1.nickname.value == ""){
		 // alert("请输入您的昵称！");
		  document.form1.nickname.focus();
		  return false;
	  }
	if(document.form1.height.value ==""){
		  //alert("请输入您的身高");
		  document.form1.height.focus();
		  return false;
		  
	  }
	if(document.form1.birthday.value ==""){
		 //alert("请选择您的生日！");
		  document.form1.birthday.focus();
		  return false; 
	  }
	 return true;  
	 }