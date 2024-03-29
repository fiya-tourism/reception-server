﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>确认订单</title>
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
			确认订单
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

<!-----------------确认订单---------------->
<div id="confirm_order">
	<div class="cw1000">	

		

		<!-----------------景区信息---------------->
		<div class="info_mo">
			<table>
				<tr>
					<th class="cwt">商品信息</th>
					<th class="cwt">单价</th>
					<th class="cwt">数量</th>
					<th class="cwt">总价</th>
				</tr>
				<tr>
					<td><a href="#"><img class="pic" width=53 height=53 src="${spots.pictureUrl}" />${spots.spotsName}</a></td>
					<td class="cwt">￥${spots.spotsPrice}</td>
					<td class="cwt">x3</td>
					<td class="cwt">￥242</td>
				</tr>
			</table>
		</div>
		<!-----------------景区信息---------------->
		<div class="info_mo">
			<table>
				<tr>
					<th colspan="2">景区信息</th>
				</tr>
				<tr>
					<td>景区名称：${spots.spotsName}</td>
					<td>联系方式：${spots.spotsPhone}</td>
				</tr>
				<tr>
					<td>开放时间：全年</td>
					<td>详细地址：${spots.spotsAddress}</td>
				</tr>
			</table>
		</div>
		<!-----------------活动信息---------------->
		<#--<div class="info_mo">-->
			<#--<table>-->
				<#--<tr>-->
					<#--<th colspan="2">活动信息</th>-->
				<#--</tr>-->
				<#--<tr>-->
					<#--<td>活动：春节逛吃哪里去？看洛阳庙会、灯展集锦</td>-->
					<#--<td>活动咨询：${spots.spotsPhone}</td>-->
				<#--</tr>-->
				<#--<tr>-->
					<#--<td>出发时间：${spots.spotsOpenTime}</td>-->
					<#--<td>集合地点：${spots.spotsVenue}</td>-->
				<#--</tr>-->
			<#--</table>-->
		<#--</div>-->
		<!-----------------景区信息---------------->
		<div class="info_mo">
			<table>
				<tr>
					<th colspan="2">联系人信息</th>
				</tr>
				<tr>
					<td>报名人：袁旭</td>
					<td>手机号：15896677331</td>
				</tr>
			</table>
		</div>
		
		<div class="pay_method">
			<h2>支付方式</h2>
			<ul>
				<li><a class="cur" href="#">支付宝支付</a><span>← 选择支付宝支付商品金额</span></li>
				<li><a href="#">微信支付</a><span>← 选择微信钱包支付商品金额</span></li>
			</ul>
		</div>
		<div class="calculation">
		
			<input type="submit" href="#" value="结算" />
			<span>应付金额： <b>￥200.0</b></span>
			
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