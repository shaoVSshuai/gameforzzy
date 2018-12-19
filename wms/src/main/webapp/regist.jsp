<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
	<script type="text/javascript" src="layui/layui.js"></script>
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
  <style>
  	/* input[type='text'],input[type='password']{
  		width:70%;
  		height:30%;
  	} */
  	@media(max-width:430px){
  		#wrapper{
  			width:300px!important;
  		}
  		#username,#pwd{
  			width:180px;
 		}
  	}
  </style>
</head>
<body class="layui-bg-white" style="background-size:100%;background-image:url('images/loginbg.jpg')">
              
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;color:#fff">
  <legend>用户注册</legend>
</fieldset>
 
 
 <div id="wrapper" style="margin-top:50px;background-color:#fff;width:414px;height:380px;padding:20px;margin:0 auto;margin-top:60px;">
<form class="layui-form" action="" >

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
  <legend>账号注册</legend>
</fieldset>

 <div class="layui-form-item" style="margin-top:10px;">
    <label class="layui-form-label">用户名</label>
    <div class="layui-input-inline" style="width:250px;">
      <input id="username" type="text" name="username" required lay-verify="required"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
    </div>
  </div>
  
 <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-inline"  style="width:250px;">
      <input id="pwd" type="password" name="password" required lay-verify="required"  placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">手机号码</label>
    <div class="layui-input-inline"  style="width:250px;">
      <input id="pwd" type="text" name="phone" required lay-verify="required|phone"  placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">支付宝账号</label>
    <div class="layui-input-inline"  style="width:250px;">
      <input id="pwd" type="text" name="aplay" required lay-verify="required|number"  placeholder="请输入支付宝账号" autocomplete="off" class="layui-input">
    </div>
  </div>
  <!-- <div class="layui-form-item">
    <label class="layui-form-label">邮箱</label>
    <div class="layui-input-inline"  style="width:250px;">
      <input id="pwd" type="text" name="email" required lay-verify="required|email"  placeholder="请输入密码" autocomplete="off" class="layui-input">
    </div>
  </div>
  -->
 
 
   <div style="width: 256px; margin: 0 auto;margin-top:30px;">
      <!-- layui 2.2.5 新增 -->
      <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="formDemo" >注册</button>
    </div>
    
    </form>
    
    </div>
    
 
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
</script>
    </body>
    </html>
    
