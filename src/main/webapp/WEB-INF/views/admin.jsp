<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>工作台</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/iconfont/iconfont.css">
	<link rel="shortcut icon" href="${pageContext.request.contextPath }/images/favicon.ico" type="image/x-icon"/>
	<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
</head>
<body>
	<!-- 顶部开始 -->
	<div class="container layui-bg-green">
		<div class="logo">
			<a href="./admin.html">AdminStation v1.0</a>
		</div>
		<div class="left_open">
			<i class="iconfont">&#xe7fb;</i>
		</div>
		<ul class="layui-nav left fast-add">
			<li class="layui-nav-item">
				<a href="javascript:;"><i class="iconfont">&#xe792;</i>&nbsp;页面操作</a>
				<dl class="layui-nav-child">
					<!-- 二级菜单 -->
					<dd>
						<a data-type="reload"><i class="iconfont">&#xe788;</i>刷新当前页</a>
					</dd>
					<dd>
						<a data-type="closeother"><i class="layui-icon">&#x1006;</i>关闭其它页</a>
					</dd>
					<dd>
						<a data-type="closeall"><i class="layui-icon">&#xe640;</i>关闭所有页</a>
					</dd>
				</dl>
			</li>
		</ul>
		<ul class="layui-nav right">
			<li class="layui-nav-item">
				<a href="javascript:;">
					<img src="${pageContext.request.contextPath }/images/me.jpg" class="layui-nav-img" alt="用户头像">
					<cite class="adminName">Admin</cite>
				</a>
				<dl class="layui-nav-child">
					<!-- 二级菜单 -->
					<dd>
						<a href="javascript:;"><i class="iconfont">&#xe7df;</i>个人信息</a>
					</dd>
					<dd>
						<a href="javascript:;"><i class="iconfont">&#xe7e6;</i>修改密码</a>
					</dd>
					<dd>
						<a class="loginout" href="index"><i class="iconfont">&#xe78c;</i>退出</a>
					</dd>
				</dl>
			</li>
		</ul>

	</div>
	<!-- 顶部结束 -->
	<!-- 中部开始 -->
	<!-- 左侧菜单开始 -->
	<div class="left-nav layui-bg-gray">
		<div id="side-nav">
			<ul id="nav"></ul>
		</div>
	</div>
	<!-- <div class="x-slide_left"></div> -->
	<!-- 左侧菜单结束 -->
	<!-- 右侧主体开始 -->
	<div class="page-content">
		<div class="layui-tab layui-tab-brief tab" lay-filter="wenav_tab" id="WeTabTip" lay-allowclose="true">
			<ul class="layui-tab-title" id="tabName">
				<li class="layui-this admin-home"><i class="iconfont">&#xe630;</i></li>
			</ul>
			<div class="layui-tab-content">
				<div class="layui-tab-item layui-show">
					<iframe src="main" frameborder="0" scrolling="yes" class="weIframe"></iframe>
				</div>
			</div>
		</div>
	</div>
	<div class="page-content-bg"></div>
	<!-- 右侧主体结束 -->
	<!-- 中部结束 -->
	<!-- 底部开始 -->
	<div class="layui-footer footer layui-bg-cyan">
		<div class="copyright">Copyright ©2018 workstation v1.0</div>
	</div>
	
	<script src="${pageContext.request.contextPath }/js/menu.js"></script>
	<script>
		layui.config({
			  base: '${pageContext.request.contextPath }/js/'
			  ,version: '101100'
			}).use('admin');
		layui.use(['element', 'layer', 'admin'], function(){
			var element = layui.element
			,layer = layui.layer
			,$ = layui.$;
		});
	</script>
</body>
</html>