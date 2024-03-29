﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>商品订单</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-------------jquery库-------------->
  	<script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
	<!-------------Amazeui--------------->
    <script type="text/javascript" src="/js/amazeui.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/amazeui.css">
    <!------------核心样式-------------->
    <link rel="stylesheet" type="text/css" href="/css/user.css">
</head>
<body>

<!-------------------版头------------------->
<div id="header">
    <div class="cw1000">
        <!-------------------logo------------------->
        <div class="logo"><a title="" href="/reception/index"><img alt="" src="/images/logo.jpg" /></a></div>
		<!-------------------头部导航------------------->
		<div class="head_title">
			提交订单
		</div>
		<!-------------------用户------------------->
		<div class="user">
			<a class="user-hd" href="#">
				<img src="/images/user_head_pic.jpg"/><b></b>
				<div class="clear"></div>
			</a>
			<div class="user-bd">
				<div class="integral"><img src="/images/integral_ico.png"/>当前积分 609</div>
				<ul class="nav_sort">
					<li><a href="my_index.html"><i class="i1"></i>我的主页</a></li>
					<li><a href="write_note.html"><i class="i2"></i>写游记</a></li>
					<li><a href="my_note.html"><i class="i9"></i>我的游记</a></li>
					<li><a href="collection_list.html"><i class="i3"></i>我的收藏</a></li>
					<li><a href="project_order.html"><i class="i4"></i>商品订单</a></li>
					<li><a href="scenic_order.html"><i class="i5"></i>旅游订单</a></li>
					<li><a href="note_comments.html"><i class="i6"></i>我的评论</a></li>
					<li><a href="my_info.html"><i class="i7"></i>设置</a></li>
					<li><a href="#"><i class="i8"></i>退出</a></li>
				</ul>
			</div>
		</div>
        <div class="clear"></div>
    </div>
</div>

<!-----------------框架---------------->
<div id="shop_car">
	<div class="cw1000">	

		<div class="main_title">
			<ul>
				<li style="width:35%;">
					<label class="am-checkbox">
						<input type="checkbox" id="checkbox_a1" class="chk_1"> 
						<label for="checkbox_a1" style="margin-right:10px;"></label> 全选
					</label>
					商品信息
				</li>
				<li style="width:15%;">单价</li>
				<li style="width:20%;">数量</li>
				<li style="width:15%;">总价</li>
				<li style="width:15%;">操作</li>
			</ul>
		</div>
		<div class="list_box">
			<ul>
				<li>
					<div class="con">
						<div class="info" style="width:35%;">
							<label class="am-checkbox" style="float:left;margin-right:15px;">
								<input type="checkbox" id="checkbox_a5" class="chk_1"> 
								<label for="checkbox_a5"></label>
							</label>
							<div class="pic"><a href="#"><img width=53 height=53 src="${commitOrder.itemPath}" /></a></div>
							<div class="name">
								<a href="#">${commitOrder.itemName}</a>
								<p>下单日期：2017-03-06</p>
							</div>
							<div class="clear"></div>
						</div>
						<div class="price" style="width:15%;"><label>￥${commitOrder.itemPrice}</label></div>
						<div class="number" style="width:20%;">
							<div class="Spinner">
								<a class="DisDe" href="javascript:void(0)"><i>-</i></a>
								<input class="Amount" value="${commitOrder.itemCount}" autocomplete="off" maxlength="3">
								<a class="Increase" href="javascript:void(0)"><i>+</i></a>
							</div>
						</div>
						
						<div class="price" style="width:15%;"><span>￥${commitOrder.itemAllPrice}</span></div>
						
						<div class="operation" style="width:15%;">
							<a class="evaluation" href="#">删除</a>
						</div>
						<div class="clear"></div>
					</div>
				</li>
			</ul>
		</div>
		<div class="calculation">
			<label class="am-checkbox" style="float:left;padding-left:30px;margin-top:15px;">
				<input type="checkbox" id="checkbox_a0" class="chk_1"> 
				<label style="margin-right:10px;" for="checkbox_a0"></label> 全选
			</label>
			<a href="javascript:">提交订单</a>
			<span>合计（含运费0.00元）： <b>￥0.00</b></span>
			
		</div>
	</div>
	<div class="clear"></div>
</div>
<!-----------------版底---------------->
<div id="footer">
	<p>河洛文化旅游发展有限公司 版权所有</p>
	<p>Copyright 2016 zgqygc.com All Rights Reserved | 豫ICP备10000000号　技术支持：闪迅</p>
</div>
</body>
</html>