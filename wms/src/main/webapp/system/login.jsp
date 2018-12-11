<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/framework.tld" prefix="f" %>

<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>WMS-仓库管理系统</title>
		<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文" />
		<meta name="description" content="JS代码网提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->
		
		<link href="<f:lrs uri="system/assets/css/bootstrap.min.css"/>" rel="stylesheet" />
		<link rel="stylesheet" href="<f:lrs uri="system/assets/css/font-awesome.min.css"/>" />


		<!-- ace styles -->

		<link rel="stylesheet" href="<f:lrs uri="system/assets/css/ace.min.css"/>" />
		
		<link rel="stylesheet" href="<f:lrs uri="system/assets/css/ace-rtl.min.css"/>" />
		
		
		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="<f:lrs uri="system/assets/css/ace-ie.min.css"/>" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="<f:lrs uri="system/assets/js/html5shiv.js"/>"></script>
		<script src="<f:lrs uri="system/assets/js/respond.min.js"/>"></script>
		<![endif]-->
	    <link rel="bookmark"  type="image/x-icon"  href="logo.ico" media="screen"/>
	    <link rel="shortcut icon" type="image/x-icon" href="logo.ico" media="screen"/>
	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="icon-leaf green"></i>
									<span class="red">WMS-</span>
									<span class="white">仓库管理系统</span>
								</h1>
								<h4 class="blue">&copy; yyxt</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="icon-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>

											<form action="<%=path %>/users/login.do" method="post">
												<input type="hidden" name="returnURL" value="<%=request.getParameter("returnURL")==null?"":request.getParameter("returnURL")%>" />
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="userName" placeholder="Username" />
															<i class="icon-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" name="passWord" placeholder="Password" />
															<i class="icon-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<!-- <input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span> -->
														</label>

														<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="icon-key"></i>
															Login
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<!-- <div class="social-or-login center">
												<span class="bigger-110">Or Login Using</span>
											</div>

											<div class="social-login center">
												<a class="btn btn-primary">
													<i class="icon-facebook"></i>
												</a>

												<a class="btn btn-info">
													<i class="icon-twitter"></i>
												</a>

												<a class="btn btn-danger">
													<i class="icon-google-plus"></i>
												</a> -->
											</div>
										</div><!-- /widget-main -->

										<div class="toolbar clearfix">
											<div>
												<!-- <a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link">
													<i class="icon-arrow-left"></i>
													I forgot my password
												</a> -->
											</div>

											<div>
												<!-- <a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link">
													I want to register
													<i class="icon-arrow-right"></i>
												</a> -->
											</div>
										</div>
									</div><!-- /widget-body -->
								</div><!-- /login-box -->


							</div><!-- /position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		
		<script src="<f:lrs uri="system/assets/js/jquery.min.js"/>"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='<f:lrs uri="system/assets/js/jquery-2.0.3.min.js"/>'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='<f:lrs uri="system/assets/js/jquery-1.10.2.min.js"/>'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='<f:lrs uri="system/assets/js/jquery.mobile.custom.min.js"/>'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			function show_box(id) {
			 jQuery('.widget-box.visible').removeClass('visible');
			 jQuery('#'+id).addClass('visible');
			}
		</script>
	</body>
</html>
